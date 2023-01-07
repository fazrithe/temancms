@extends('site2.layouts.app')
@section('content')

        <div class="container ">
            <div class=" row  form-login justify-content-center">
                <div class="col-lg-6 register-account">
                <h1 class="fs-4">{{ __('Sign in to your account') }}</h1>
                {{-- @include('site.partials.error') --}}
                <form class="ragister-form" name="ragister-form" method="post" action="#">
                    @csrf
                    <div class="form-group  text-left mt-4">
                        <label class="mb-2"   >{{ __('email') }}</label>
                        <input name="email" type="email" class="form-control" required="required" placeholder="{{ __('input_email') }}">
                    </div>
                    <div class="form-group  mt-4">

                        <label class="mb-2 flex flex-col">{{ __('password') }}
                        </label>


                        <input name="password" type="password" class="form-control mb-2" id="inputPassword" required="required" placeholder="***********">
                        <input type="checkbox" class="form-check-input" id="show-password">   <label class="mb-2 flex flex-col">Tampilkan Password</label><br>
                        <a class="forgot-password" href="{{ route('forget-password') }}">Forgot your password?</a>
                    </div>
                    <div class="mt-4 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Stay signed</label>
                      </div>
                    @if( settingHelper('captcha_visibility') == 1 )
                        <div class="col-lg-12 text-center mb-4">
                            <div class="row">
                              {!! NoCaptcha::renderJs() !!}
                              {!! NoCaptcha::display() !!}
                          </div>
                        </div>
                    @endif
                    <button class="button-primary mt-4" type="submit">{{ __('login') }}</button>
                    <div class="middle-content mt-4 flex">
                        <p>{{ __('dont_have_an_account') }} <a class="sign-up" href="{{ route('site.register.form') }}">{{ __('sign_up') }}</a></p>
                    </div>
                </form>

                {{--<!-- /.contact-form -->--}}
            </div>
            {{--<!-- /.account-content -->--}}
        </div>
        </div>
        {{--<!-- /.container -->--}}
    </div>
    {{--<!-- /.ragister-account -->--}}
@endsection
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script>
    $(document).ready(function() {
        $('#show-password').click(function() {
            if ($(this).is(':checked')) {
                $('#inputPassword').attr('type', 'text');
            } else {
                $('#inputPassword').attr('type', 'password');
            }
        });
    });
</script>
