@extends('layouts.user')

@section('title')
   @langg('Two Step Authentication')
@endsection

@section('breadcrumb')

    @langg('Two Step Authentication')
 
@endsection

@section('content')

        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        @if (auth()->user()->two_fa_status == 1)
                          <h4>@langg('Deactivate Two Step Authentication')</h4>
                        @else
                          <h4>@langg('Activate Two Step Authentication')</h4>
                        @endif
                    </div>
                    <div class="card-body">
                        <form action="" method="POST">
                            @csrf
                            <div class="form-group">
                               <h4>@langg('Please check your phone number to get OTP code. Your phone number is : '.auth()->user()->phone)</h4>
                            </div>
                            <div class="form-group mb-2">
                                <label class="mb-1">@langg('OTP Code')</label>
                                <input class="form-control" type="text" name="code" required>
                            </div>
                            <div class="form-group d-flex justify-content-between">
                                <a href="{{route('user.two.step.resend')}}" class="text-left">@langg('Didn\'t get code? Resend.')</a>
                               <button type="submit" class="btn btn-primary">@langg('Submit')</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

@endsection