<?php

namespace App\Http\Controllers\User;

use App\Models\Wallet;
use App\Models\Withdraw;
use App\Models\Withdrawals;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Artisan;

class WithdrawalController extends Controller
{
    public function withdrawForm()
    {
        $methods = Withdraw::where('status',1)->get();
        return view('user.withdraw.withdraw_form',compact('methods'));
    }

    public function methods(Request $request)
    {
        $methods = Withdraw::where('currency_id',$request->currency)->where('status',1)->get();
        if($methods->isEmpty()){
            return response('empty');
        }
        return response($methods);
    }

    public function withdrawSubmit(Request $request)
    {
        $request->validate([
            'amount'    => 'required|numeric|gt:0',
            'method_id' => 'required',
            'user_data' => 'required'
        ]);

        $method = Withdraw::findOrFail($request->method_id);
        if(!$method){
            return back()->with('error','Withdraw method not found');
        }

        if($request->amount < $method->min_amount || $request->amount > $method->max_amount){
            return back()->with('error','Please follow the limit');
        }

        $charge = chargeCalc($method,$request->amount);
        $finalAmount = numFormat($request->amount + $charge);
        $user = auth()->user();

        if($user->balance < $finalAmount){
            return back()->with('error','Insufficient balance');
        }

        $user->balance -=  $finalAmount;
        $user->save();
        
        $withdraw              = new Withdrawals();
        $withdraw->trx         = str_rand();
        $withdraw->user_id     = auth()->id();
        $withdraw->method_id   = $method->id;
        $withdraw->amount      = $request->amount;
        $withdraw->charge      = $charge;
        $withdraw->total_amount= $finalAmount;
        $withdraw->user_data   = $request->user_data;
        $withdraw->save();

        return back()->with('success','Withdraw request has been submitted successfully.');
    }

    public function history()
    {
        $withdrawals = Withdrawals::where('user_id',auth()->id())->latest()->paginate(15);
        return view('user.withdraw.history',compact('withdrawals'));
    }
}
