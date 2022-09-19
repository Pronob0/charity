@extends('layouts.auth')

@section('title')
   @langg('User Register')
@endsection


@section('content')
{{--<form class="card card-md" action="" method="POST" onsubmit="return recaptcha();">--}}
{{--  @csrf--}}
{{--    <div class="card-body">--}}
{{--      <h2 class="card-title text-center mb-4">@langg('Create new account')</h2>--}}
{{--      <div class="mb-3">--}}
{{--        <label class="form--label">@langg('Name')</label>--}}
{{--        <input type="text" class="form-control" name="name" placeholder="@langg('Enter name')" required value="{{old('name')}}">--}}
{{--      </div>--}}
{{--      <div class="mb-3">--}}
{{--        <label class="form--label">@langg('Email address')</label>--}}
{{--        <input type="email" class="form-control" name="email" placeholder="@langg('Enter email')" required value="{{old('email')}}">--}}
{{--      </div>--}}
{{--      <div class="mb-3">--}}
{{--        <label class="form--label">@langg('Country')</label>--}}
{{--        <select name="country" class="form-control country" required>--}}
{{--          <option value="">@langg('Select')</option>--}}
{{--          @foreach ($countries as $item)--}}
{{--          <option value="{{$item->name}}" data-dial_code="{{$item->dial_code}}" {{@$info->geoplugin_countryCode == $item->code ? 'selected':''}}>{{$item->name}}</option>--}}
{{--          @endforeach--}}
{{--        </select>--}}
{{--      </div>--}}

{{--      <label class="form--label">@langg('Phone No.')</label>--}}
{{--      <div class="mb-3 input-group">--}}
{{--        <input type="hidden" name="dial_code">--}}
{{--        <span class="input-group-text d_code"></span>--}}
{{--        <input type="text" name="phone"  class="form-control" placeholder="@langg('Phone No.')" required value="{{old('phone')}}">--}}
{{--      </div>--}}

{{--      <div class="mb-3">--}}
{{--        <label class="form--label">@langg('Address')</label>--}}
{{--        <input type="text" name="address" value="{{old('address')}}" class="form-control" placeholder="@langg('Address')" required>--}}
{{--      </div>--}}
{{--      <div class="mb-3">--}}
{{--        <label class="form--label">@langg('Password')</label>--}}
{{--        <div class="input-group input-group-flat">--}}
{{--          <input type="password" name="password" class="form-control"  placeholder="@langg('Password')"  autocomplete="off" required>--}}
{{--        </div>--}}
{{--      </div>--}}
{{--      <div class="mb-3">--}}
{{--        <label class="form--label">@langg('Confirm Password')</label>--}}
{{--        <div class="input-group input-group-flat">--}}
{{--          <input type="password" name="password_confirmation" class="form-control"  placeholder="@langg('Confirm Password')"  autocomplete="off">--}}
{{--        </div>--}}
{{--      </div>--}}
{{--        @if ($gs->recaptcha)--}}
{{--        <div class="mb-3">--}}
{{--          <div class="g-recaptcha" data-sitekey="{{$gs->recaptcha_key}}" data-callback="verifyCaptcha"></div>--}}
{{--          <div id="g-recaptcha-error"></div>--}}
{{--        </div>--}}
{{--        @endif--}}

{{--      <div class="form-footer">--}}
{{--        <button type="submit" class="btn btn-primary w-100">@langg('Sign Up')</button>--}}
{{--      </div>--}}
{{--    </div>--}}
{{--  </form>--}}
{{--  <div class="text-center text-muted mt-3">--}}
{{--   @langg(' Already have account?') <a href="{{route('user.login')}}" tabindex="-1">@langg('Sign in')</a>--}}
{{--  </div>--}}


<section class="account-section register">
    <div class="account-wrapper auth--page ">

        <div class="account-right">
            <div class="w-100">
                <div class="section-title text-center">
                    <a href="{{url('/')}}" class="logo">
                        <img src="{{getPhoto($gs->header_logo)}}" alt="logo">
                    </a>
                    <h4 class="title mt-3 mb-0">@langg('Create an Account')</h4>

                </div>
                <form class="row g-4" action="" method="POST" onsubmit="return recaptcha();">
                    @csrf
                    <div class="col-sm-6 form-group">
                        <label class="form--label">@langg('Name')</label>
                        <input type="text" class="form-control form--control bg--section" name="name" placeholder="@langg('Enter name')" required value="{{old('name')}}">
                    </div>
                    <div class="col-sm-6 form-group">
                        <label class="form--label">@langg('Email address')</label>
                        <input type="email" class="form-control form--control bg--section" name="email" placeholder="@langg('Enter email')" required value="{{old('email')}}">
                    </div>
                    <div class="col-sm-6 form-group">
                        <label class="form--label">@langg('Country')</label>
                        <select name="country" class="form-control form--control bg--section country" required>
                            <option value="">@langg('Select')</option>
                            @foreach ($countries as $item)
                                <option value="{{$item->name}}" data-dial_code="{{$item->dial_code}}" {{@$info->geoplugin_countryCode == $item->code ? 'selected':''}}>{{$item->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="col-sm-6 form-group">
                         <label class="form--label">@langg('Phone No.')</label>
                        <input type="hidden" name="dial_code">
                        <div class="input-group">
                            <span class="input-group-text d_code"></span>
                            <input type="text" name="phone"  class="form-control form--control bg--section" placeholder="@langg('Phone No.')" required value="{{old('phone')}}">
                        </div>
                    </div>

                    <div class="col-sm-12 form-group">
                        <label class="form--label">@langg('Address')</label>
                        <input type="text" name="address" value="{{old('address')}}" class="form-control form--control bg--section" placeholder="@langg('Address')" required>
                    </div>
                    <div class="col-sm-6 form-group">
                        <label class="form--label">@langg('Password')</label>
                        <div class="input-group input-group-flat">
                            <input type="password" name="password" class="form-control form--control bg--section"  placeholder="@langg('Password')"  autocomplete="off" required>
                        </div>
                    </div>
                    <div class="col-sm-6 form-group">
                        <label class="form--label">@langg('Confirm Password')</label>
                        <div class="input-group input-group-flat">
                            <input type="password" name="password_confirmation" class="form-control form--control bg--section"  placeholder="@langg('Confirm Password')"  autocomplete="off">
                        </div>
                    </div>
                    @if ($gs->recaptcha)
                        <div class="col-sm-12 form-group">
                            <div class="g-recaptcha" data-sitekey="{{$gs->recaptcha_key}}" data-callback="verifyCaptcha"></div>
                            <div id="g-recaptcha-error"></div>
                        </div>
                    @endif
                    <div class="col-xl-12 form-group">
                        <div class="d-flex flex-wrap justify-content-between">

                            <div>
                                <a href="{{route('user.login')}}">@langg('Already have an Account ?')</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-12 form-group">
                        <button type="submit" class="cmn--btn">@langg('Create Account')</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection

@push('script')
   <script src="https://www.google.com/recaptcha/api.js"></script>
    <script>
      'use strict';
     function auto() {
        var code = $('.country option:selected').data('dial_code')
        $('.d_code').text(code)
        $('input[name=dial_code]').val(code)
      }
      auto();
      $('.country').on('change',function () {
        auto();
      })

      function recaptcha() {
            var response = grecaptcha.getResponse();
            if (response.length == 0) {
                document.getElementById('g-recaptcha-error').innerHTML = '<span class="text-danger">@lang("Captcha field is required.")</span>';
                return false;
            }
            return true;
        }
    </script>
@endpush
