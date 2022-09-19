<?php
namespace  App\Http\Controllers\User;

use App\Models\Wallet;
use App\Models\Deposit;
use App\Models\Currency;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Models\PaymentGateway;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class DepositController extends Controller {


    public function index()
    {
        Session::forget('deposit_data');
        $deposits = Deposit::where('user_id',auth()->id())->latest()->take(7)->get();
        return view('user.deposit.index',[
            'gateways' => PaymentGateway::whereJsonContains('currency_id',currency())->whereStatus(1)->get(),
            'wallets' =>  Currency::where('status',1)->get(),
            'deposits' => $deposits
        ]);
    }

    public function dipositHistory()
    {
        $deposits = Deposit::where('user_id',auth()->id())->latest()->paginate(15);
        return view('user.deposit.history',[
            'deposits' => $deposits
        ]);
    }

    public function depositSubmit(Request $request)
    {
        $request->validate(['amount'=>'required|gt:0','gateway'=>'required']);
        $currency = Currency::findOrFail(currency());
        $gateway = PaymentGateway::findOrFail($request->gateway);
        $charge = null;
        if($gateway->type == 'manual'){
            $charge = $gateway->fixed_charge + (($request->amount * $gateway->percent_charge)/100);
            $totalAmount =  $request->amount + $charge; 
            $request['amount'] = $totalAmount;
            $request['charge'] = $charge;
        }
        $input = $request->merge(['keyword' => $gateway->keyword])->except('_token');
        Session::put('deposit_data',$input);
        return view('user.deposit.payment',[
            'gateway'      => $gateway,
            'deposit_data' => Session::get('deposit_data'),
            'currency'    => $currency,
            'charge'  => $charge
        ]);
    }

    public function balanceUpdate($user,$deposit_data)
    {
        $currency = Currency::findOrFail(currency());
        $user = auth()->user();
        $user->balance += amountConv($deposit_data['amount'], $currency);
        $user->update();

        $trnx              = new Transaction();
        $trnx->trnx        = str_rand();
        $trnx->user_id     = $user->id;
        $trnx->amount      = $deposit_data['amount'];
        $trnx->charge      = 0;
        $trnx->remark      = 'deposit';
        $trnx->type        = '+';
        $trnx->details     = translate('Deposit balance to wallet : '). $deposit_data['curr_code'];
        $trnx->save();
    }

    public function depositPayment(Request $request)
    {
        $request_data = $request;
        $deposit_data = Session::get('deposit_data');
        $service =  str_replace('User','',__NAMESPACE__). 'Gateway'. '\\'. ucwords($deposit_data['keyword']);
        $deposit = $service::initiate($request_data,$deposit_data,'deposit');

        if($deposit['status'] == 1 && in_array($deposit_data['keyword'],['paytm','razorpay'])){
            return view($deposit['view'],$deposit['prams']);
        }

        if($deposit['status'] == 1 && isset($deposit['url'])){
            return redirect($deposit['url']);
        }

        try {
            if($deposit['status'] == 1){
                $user = auth()->user();
                $data = new Deposit();
                $data->user_info    = json_encode($user);
                $data->user_id      = $user->id;
                $data->amount       = $deposit_data['amount'];
                $data->default_curr_amount = amountConv($deposit_data['amount'], json_decode(sessionCurrency()));
                $data->method       = $deposit_data['gateway'];
                $data->currency_id  = currency();
                $data->currency_info= sessionCurrency();
                $data->status       = $request->type == 'manual' ? 'pending': 'completed';
                $data->txn_id       = $deposit['txn_id'];
                $data->trx_details  = $request->trx_details;
                $data->charge       = $deposit_data['charge'] ?? null;
                $data->save();
                if($request->type != 'manual'){
                    $this->balanceUpdate($user,$deposit_data);
                    $msg = __('Your balance added successfully');
                }else{
                    $msg = __('Your deposit request is taken wait for the admin approval.');
                }
             
                Session::forget(['deposit_data','currency','invoice']);
                return redirect(route('user.deposit.index'))->with('success',$msg);
            }
        } catch (\Throwable $th) {
            return $th->getMessage();
            return redirect(route('user.deposit.index'))->with('error',__('Somthing went wrong please try again'));
        }
        return redirect(route('user.deposit.index'))->with('error',$deposit['message']);
    }


    public function notifyOperation($deposit)
    {
        $deposit_data = Session::get('deposit_data');
         try {
            if($deposit['status'] == 1 && $deposit['txn_id']){
                $user = auth()->user();
               
                $data = new Deposit();
                $data->user_info = json_encode($user);
                $data->user_id  = $user->id;
                $data->currency_id  = session('currency')->id;
                $data->user_type  = 1;
                $data->amount   = $deposit_data['amount'];
                $data->method   = $deposit_data['gateway'];
                $data->currency_id  = currency();
                $data->currency_info  = sessionCurrency();
                $data->status  = 'completed';
                $data->txn_id  = $deposit['txn_id'];
                $data->save();

                $this->balanceUpdate($user,$deposit_data);
                
                Session::forget('deposit_data');
                return redirect(route('user.deposit.index'))->with('success','Your balance added successfully');
            }
        } catch (\Throwable $th) {
            return redirect(route('user.deposit.index'))->with('error',__('Somthing want wront please try again'));
        }
    }
}