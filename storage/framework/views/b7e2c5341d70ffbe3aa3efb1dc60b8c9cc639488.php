<?php $__env->startSection('content'); ?>

        <div class="container ">
            <div class=" row  form-login justify-content-center">
                <div class="col-lg-6 register-account">
                <h1 class="fs-4"><?php echo e(__('Sign in to your account')); ?></h1>
                
                <form class="ragister-form" name="ragister-form" method="post" action="#">
                    <?php echo csrf_field(); ?>
                    <div class="form-group  text-left mt-4">
                        <label class="mb-2"   ><?php echo e(__('email')); ?></label>
                        <input name="email" type="email" class="form-control" required="required" placeholder="<?php echo e(__('input_email')); ?>">
                    </div>
                    <div class="form-group  mt-4">

                        <label class="mb-2 flex flex-col"><?php echo e(__('password')); ?>

                        </label>


                        <input name="password" type="password" class="form-control mb-2" required="required" placeholder="***********">
                        <a class="forgot-password" href="<?php echo e(route('forget-password')); ?>">Forgot your password?</a>
                    </div>
                    <div class="mt-4 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Stay signed</label>
                      </div>
                    <?php if( settingHelper('captcha_visibility') == 1 ): ?>
                        <div class="col-lg-12 text-center mb-4">
                            <div class="row">
                              <?php echo NoCaptcha::renderJs(); ?>

                              <?php echo NoCaptcha::display(); ?>

                          </div>
                        </div>
                    <?php endif; ?>
                    <button class="button-primary mt-4" type="submit"><?php echo e(__('login')); ?></button>
                    <div class="middle-content mt-4 flex">
                        <p><?php echo e(__('dont_have_an_account')); ?> <a class="sign-up" href="<?php echo e(route('site.register.form')); ?>"><?php echo e(__('sign_up')); ?></a></p>
                    </div>
                </form>

                
            </div>
            
        </div>
        </div>
        
    </div>
    
<?php $__env->stopSection(); ?>


<?php echo $__env->make('site2.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\temancms\resources\views/site2/auth/login.blade.php ENDPATH**/ ?>