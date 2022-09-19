@extends('layouts.auth')

@section('title')
   @langg('Reset Password')
@endsection


@section('content')
<section class="account-section">
    <div class="account-wrapper auth--page login-wrapper">
        <div class="account-right">
            <div class="w-100">
                <div class="section-title">
                    <h3 class="title">@langg('Password Reset Code')</h3>
                    <p>@langg('Enter the verification code and your password will be reset and emailed to you.')</p>
                </div>
                <form class="row g-4" action="" method="post">
                    @csrf
                    <div class="col-sm-12 form-group">
                        <label class="form--label" for="email">@langg('Verify Code')</label>
                        <input type="text" name="code" class="form-control form--control bg--section" id="email"
                               placeholder="@langg('Password Reset Code')"  required>
                    </div>

                    <div class="col-sm-12 form-group">
                        <div class="d-flex flex-wrap justify-content-between">
                            <div>
                                <a href="{{route('user.login')}}">@langg('Take me to login page.')</a>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-12 form-group">
                        <button type="submit" class="cmn--btn">@langg('Verify Code')</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
@endsection
