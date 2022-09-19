<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Deposit;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Invoice;
use App\Models\Transaction;
use App\Models\Wallet;

class ManageDepositController extends Controller
{
    public function deposits()
    {
        $search = request('search');
        $status = request('status');
        $deposits = Deposit::when($status,function($q) use($status){
            return $q->where('status',$status);
        })
        ->when($search,function($q) use($search){
            return $q->where('txn_id','like',"%$search%");
        })
        ->latest()->paginate(15);
        return view('admin.deposit.index',compact('deposits','search'));
    }

    public function approve(Request $request)
    {
        $deposit = Deposit::findOrFail($request->id);
        $deposit->status = 'completed';
        $deposit->save();
        $user = User::findOrFail($deposit->user_id);

        $user->balance += ($deposit->amount - $deposit->charge);
        $user->save();

   

                $trnx              = new Transaction();
                $trnx->trnx        = str_rand();
                $trnx->user_id     = $user->id;
               
                $trnx->currency_id = $deposit->currency_id;
                $trnx->user_type   = 1;
                $trnx->amount      = ($deposit->amount - $deposit->charge);
                $trnx->charge      = $deposit->charge == NULL ? 0 : $deposit->charge;
                $trnx->remark      = 'deposit_approve';
                $trnx->type        = '+';
                $trnx->details     = trans('Approve deposit');
                $trnx->save();

                @mailSend('deposit_approve',[
                    'amount' => amount($deposit->amount,$deposit->currency->type,2),
                    'curr'   => $deposit->currency->code,
                    'trnx'   => $trnx->trnx,
                    'method' => $deposit->gateway->name,
                    'charge' => amount($deposit->charge,$deposit->currency->type,2),
                    'new_balance' => amount($user->balance,$user->currency->type,2),
                    'data_time' => dateFormat($trnx->created_at)
                ],$user);

                return back()->with('success','Deposit has been approved');
        



       
       
    }

    public function reject(Request $request)
    {
        $deposit = Deposit::findOrFail($request->id);
        $deposit->status = 'rejected';
        $deposit->save();
    
        $user = User::findOrFail($deposit->user_id);

        @mailSend('deposit_reject',[
            'amount' => amount($deposit->amount,$deposit->currency->type,2),
            'curr'   => $deposit->currency->code,
            'method' => $deposit->gateway->name,
            'charge' => amount($deposit->charge,$deposit->currency->type,2),
            'reject_reason' => $request->reject_reason,
            'data_time' => dateFormat(now())
        ],$user);

        return back()->with('success','Deposit has been rejected');
    }
}
