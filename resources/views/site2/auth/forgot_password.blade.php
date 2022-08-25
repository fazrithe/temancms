@extends('site2.layouts.app') @section('content')
    
        <div class="container ">
            <div class="account-content form-login row  justify-content-center ">
                <div class="col-lg-6 register-account">
                <h1 class="fs-4">{{__('Reset your password')}}</h1> {{-- @include('site.partials.error') --}}
                <p class="mt-4">Enter the email address associated with your account and we'll send you a link to reset your password.</p>
                <form class="ragister-form mt-4" name="ragister-form" method="post" action="{{route('do-forget-password')}}">
                    @csrf
                    <div class="form-group text-left mb-0">
                        <input name="email" type="email" value="{{old('email')}}" class="form-control" required="required" placeholder="{{__('email')}}" autocomplete="off">
                    </div>
                    <div class="text-center">
                    <button class="button-primary mt-4 mb-2" type="submit">{{ __('send_code') }}</button>
                    <a class="sign-up text-center" href="{{ route('site.login.form') }}">{{ __('Return to sign in') }}</a>
                </div>
                </form>
                {{--            <!-- /.contact-form -->--}}
            </div>
            </div>
            {{--        <!-- /.account-content -->--}}
        </div>
        {{--    <!-- /.container -->--}}
    
    {{--<!-- /.ragister-account -->--}}
@endsection
