<?php

namespace App\Http\Controllers\User;

use App\Models\Transaction;
use App\Helpers\MediaHelper;
use Illuminate\Http\Request;
use App\Models\Generalsetting;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Http\Resources\User\UserResource;

class UserController extends Controller{

    public function __construct(UserResource $resource)
    {
        $this->resource = $resource;
    }

    public function trnx()
    {
       return Transaction::where('user_id',auth()->id())->where('user_type',1)->with('currency');
    }

    public function index()
    {
        return view('user.dashboard');
    }

    public function profile()
    {
        $user = auth()->user();
        return view('user.profile',compact('user'));
    }


    public function profileSubmit(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
        ]);

        $user          = auth()->user();
        $user->name    = $request->name;
        $user->phone   = $request->phone;
        $user->city    = $request->city;
        $user->zip     = $request->zip;
        $user->address = $request->address;
     
        if($request->photo){
            $user->photo = MediaHelper::handleMakeImage($request->photo,[300,300]);
        }
        $user->update();

        return back()->with('success','Profile has been updated');
    } 

    public function changePass(Request $request)
    {
        $request->validate(['old_pass'=>'required','password'=>'required|min:6|confirmed']);
        $user = auth()->user();
        if (Hash::check($request->old_pass, $user->password)) {
            $password = bcrypt($request->password);
            $user->password = $password;
            $user->save();
            return back()->with('success', 'Password has been changed');
        } else {
            return back()->with('error', 'The old password doesn\'t match!');
        }
    }

  
    public function transactions()
    {
        $remark = request('remark');
        $search = request('search');

        $transactions = Transaction::where('user_id',auth()->id())->where('user_type',1)
        ->when($remark,function($q) use($remark){
            return $q->where('remark',$remark);
        })
        ->when($search,function($q) use($search){
            return $q->where('trnx',$search);
        })
        ->with('currency')->latest()->paginate(15);
    
        return view('user.transactions',compact('transactions','search'));
    }

    public function trxDetails($id)
    {
        
        $transaction = Transaction::where('id',$id)->where('user_id',auth()->id())->first();
        if(!$transaction){
            return response('empty');
        }
        return view('user.trx_details',compact('transaction'));
    }

    public function twoStep()
    {
        return view('user.twostep.two_step');
    }

    public function twoStepSendCode(Request $request)
    {
        $request->validate(['password'=>'required|confirmed']);
        $user = auth()->user();
        if (Hash::check($request->password, $user->password)) {
            $code = randNum();
            $user->two_fa_code = $code;
            $user->update();
            sendSMS($user->phone,trans('Your two step authentication OTP is : ').$code,Generalsetting::value('contact_no'));
            return redirect(route('user.two.step.verify'))->with('success','OTP code is sent to your phone.');
        } else {
            return back()->with('error', 'The password doesn\'t match!');
        }

    }
    public function twoStepVerifyForm()
    {
        return view('user.twostep.verify');
    }

    public function twoStepVerifySubmit(Request $request)
    {
        $request->validate(['code'=>'required']);
        $user = auth()->user();
        if($request->code != $user->two_fa_code){
            return back()->with('error','Invalid OTP');
        }
        if($user->two_fa_status == 1){
            $user->two_fa_status = 0;
            $user->two_fa= 0;
            $msg = 'Your two step authentication is de-activated';
        }else{
            $user->two_fa_status = 1;
            $msg = 'Your two step authentication is activated';
        }
        $user->save();
        return redirect(route('user.two.step'))->with('success',$msg);
    }

    public function changeCurrency($id)
    {
        session()->put('currency', $id);
        return redirect()->back();
    }
}