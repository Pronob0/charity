<?php

namespace App\Http\Controllers\User;

use Auth;
use App\Models\User;
use App\Helpers\MailHelper;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\User\AuthRequest;
use App\Http\Resources\User\UserResource;
use App\Models\Country;
use App\Models\Generalsetting;
use App\Models\Wallet;


class AuthController extends Controller
{
  
    public function __construct(UserResource $resource)
    {
        $this->middleware('guest', ['except' => ['logout', 'userLogout']]);
        $this->resource = $resource;
    }

    public function registerForm()
    {
      $gs = Generalsetting::first();
      if($gs->registration == 0){
        return back()->with('error','Registration is currently off.');
      }
      $countries = Country::get();
      $info = @loginIp();
      return view('user.auth.register',compact('countries','info'));
    }

    public function register(Request $request)
    {
      $gs = Generalsetting::first();
      if($gs->registration == 0){
        return back()->with('error','Registration is currently off.');
      }

      $countries = Country::query();
      $name = $countries->pluck('name')->toArray();
      $data = $request->validate([
        'name' => 'required',
        'email' => 'required|email|unique:users|email_domain:'.$request->email,
        'dial_code' => 'required',
        'phone' => 'required',
        'country' => 'required|in:'.implode(',',$name),
        'address' => 'required',
        'password' => 'required|min:6|confirmed'
      ],['email.email_domain'=>'Allowed emails are only within : '.$gs->allowed_email]);

      $currency = $countries->where('name',$request->country)->value('currency_id');
      $data['phone'] = $request->dial_code.$request->phone;
      $data['password'] = bcrypt($request->password);
      $data['email_verified	'] = $gs->is_verify == 1 ? 0:1;
      $user = User::create($data);

      Wallet::create([
        'user_id' => $user->id,
        'user_type' => 1,
        'currency_id' => $currency,
        'balance' => 0
      ]);

      session()->flush('success','Registration successful');
      Auth::guard('web')->attempt(['email' => $request->email, 'password' => $request->password]);

      if($gs->is_verify == 1){
        $user->verify_code = randNum();
        $user->save();

        @email([
          'email'   => $user->email,
          'name'    => $user->name,
          'subject' => __('Email Verification Code'),
          'message' => __('Email Verification Code is : '). $user->verify_code,
         ]);
      }

      return redirect(route('user.dashboard'));
    }

    public function showLoginForm()
    {
      if(Auth::guard('web')->check()){
        return redirect(route('user.dashboard'));
      }
      return view('user.auth.login');
    }

    public function login(AuthRequest $request)
    {
      $mgs = $this->resource->login($request);

      if(isset($mgs['status'])){
        return back()->with('error',$mgs['message']);
      }

      return redirect(route('user.dashboard'));

    }

    public function logout()
    {
        $auth = Auth::guard('web');
        if($auth->user()->two_fa_status == 1){
          $auth->user()->two_fa = 1;
          $auth->user()->save();
        }
        Auth::guard('web')->logout();
        return redirect('/user/login');
    }

    public function forgotPassword()
    {
      return view('user.auth.forgot_password');
    }

    public function forgotPasswordSubmit(Request $request)
    {
        $request->validate(['email'=>'required|email']);
        $exist = User::where('email',$request->email)->first();
        if(!$exist){
          return back()->with('error','Sorry! Email doesn\'t exist');
        }

        $exist->verify_code = randNum();
        $exist->save();

        @email([
          'email'   => $exist->email,
          'name'    => $exist->name,
          'subject' => __('Password Reset Code'),
          'message' => __('Password reset code is : ').$exist->verify_code,
        ]);
        session()->put('email',$exist->email);
        return redirect(route('user.verify.code'))->with('success','A password reset code has been sent to your email.');
    }

    public function verifyCode()
    {
      return view('user.auth.verify_code');
    }

    public function verifyCodeSubmit(Request $request)
    {
        $request->validate(['code' => 'required|integer']);
        $user = User::where('email',session('email'))->first();
        if(!$user){
            return back()->with('error','User doesn\'t exist');
        }

        if($user->verify_code != $request->code){
            return back()->with('error','Invalid verification code.');
        }
        return redirect(route('user.reset.password'));
    }

    public function resetPassword()
    {
        return view('user.auth.reset_password');
    }

    public function resetPasswordSubmit(Request $request)
    {
        $request->validate(['password'=>'required|confirmed|min:6']);
        $user = User::where('email',session('email'))->first();
        $user->password = bcrypt($request->password);
        $user->update();
        return redirect(route('user.auth.login'))->with('success','Password reset successful.');
    }
 

}
