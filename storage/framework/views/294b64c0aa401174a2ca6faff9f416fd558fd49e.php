<?php $__env->startSection('api'); ?>
    aria-expanded="true"
<?php $__env->stopSection(); ?>
<?php $__env->startSection('api-show'); ?>
    show
<?php $__env->stopSection(); ?>
<?php $__env->startSection('api_active'); ?>
    active
<?php $__env->stopSection(); ?>
<?php $__env->startSection('api-settings'); ?>
    active
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            <!-- page info start-->
            <?php if(session('error')): ?>
                <div id="error_m" class="alert alert-danger">
                    <?php echo e(session('error')); ?>

                </div>
            <?php endif; ?>
            <?php if(session('success')): ?>
                <div id="success_m" class="alert alert-success">
                    <?php echo e(session('success')); ?>

                </div>
            <?php endif; ?>
            <?php if($errors->any()): ?>
                <div class="alert alert-danger">
                    <ul>
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li><?php echo e($error); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                </div>
            <?php endif; ?>

            
            <input type="hidden" name="url" id="url" value="<?php echo e(url('/')); ?>">

            <div class="row clearfix">
                <div class="col-12">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="add-new-page  bg-white p-0 m-b-20">

                                <nav>
                                    <div class="nav m-b-20 setting-tab" id="nav-tab" role="tablist">

                                        <a class="nav-item nav-link active" id="api-settings"
                                           href="<?php echo e(route('api-settings')); ?>"
                                           role="tab"><?php echo e(__('api_settings')); ?></a>

                                        <a class="nav-item nav-link" id="android-settings"
                                           href="<?php echo e(route('android-settings')); ?>"
                                           role="tab"><?php echo e(__('android_settings')); ?></a>

                                        <a class="nav-item nav-link" id="ios-settings"
                                           href="<?php echo e(route('ios-settings')); ?>"
                                           role="tab"><?php echo e(__('ios_settings')); ?></a>

                                        <a class="nav-item nav-link" id="app-config"
                                           href="<?php echo e(route('app-config')); ?>"
                                           role="tab"><?php echo e(__('app_config')); ?></a>

                                        <a class="nav-item nav-link" id="ads-config"
                                           href="<?php echo e(route('ads-config')); ?>"
                                           role="tab"><?php echo e(__('ads_config')); ?></a>

                                        <a class="nav-item nav-link" id="app-intro"
                                           href="<?php echo e(route('app-intro')); ?>"
                                           role="tab"><?php echo e(__('app_intro')); ?></a>

                                    </div>
                                </nav>

                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="tab-content" id="nav-tabContent">
                                    <div class="tab-pane fade show active" id="general_settings" role="tabpanel">
                                        <?php echo Form::open(['route' => 'update-settings', 'method' => 'post', 'enctype' => 'multipart/form-data', 'id' => 'update-settings']); ?>


                                        <div class="col-sm-12 mb-4">
                                            <div class="form-group">
                                                <label for="app_server_url"
                                                       class="col-form-label"><?php echo e(__('api_server_url')); ?></label>
                                                <input id="app_server_url" class="form-control"
                                                       value="<?php echo e(url('api')); ?>" onclick="copyInput('app_server_url')">
                                                       <small><?php echo e(__('copy_&_paste_this_to_app_source_code')); ?></small>
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="form-group position-relative">
                                                        <label for="api_key_for_app"
                                                               class="col-form-label"><?php echo e(__('api_key_for_app')); ?></label>
                                                        <div class="d-flex setting">
                                                            <input id="api_key_for_app" class="form-control" name="api_key_for_app"
                                                                   value="<?php echo e(settingHelper('api_key_for_app')); ?>">
                                                            <?php if(Sentinel::getUser()->hasAccess(['api_write'])): ?>
                                                                <button type="button" class="rounded mx-1 btn-primary"  onclick="getKey()"><i class="fas fa-refresh"></i></button>
                                                            <?php endif; ?>
                                                            <button type="button" class="rounded btn-primary" onclick="copyInput('api_key_for_app')"><i class="fas fa-copy"></i></button>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <?php if(Sentinel::getUser()->hasAccess(['api_write'])): ?>
                                            <div class="row">
                                                <div class="col-12 m-t-20">
                                                    <div class="form-group form-float form-group-sm text-right">
                                                        <button type="submit"
                                                                class="btn btn-primary pull-right"><i
                                                                class="m-r-10 mdi mdi-content-save-all"></i><?php echo e(__('save_changes')); ?>

                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endif; ?>
                                        <?php echo e(Form::close()); ?>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!--  tab end -->
                </div>
            </div>
            <!-- right sidebar end -->
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script type="text/javascript">
        function copyInput(element) {

            var copyText = document.getElementById(element);

            copyText.select();
            copyText.setSelectionRange(0, 99999);
            document.execCommand("copy");


            swal({
                title: "<?php echo e(__('copied')); ?>",
                text: copyText.value+ "\n<?php echo e(__('now_just_paste_into_android_configuration_file')); ?>",
                icon: "success",
                confirmButtonText: false
            })

        }

        function getKey() {
            var api_key_for_app = "";
            var string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()";

            for (var i = 0; i < 32; i++)
                api_key_for_app += string.charAt(Math.floor(Math.random() * string.length));

            $("#api_key_for_app").val(api_key_for_app);
        }
    </script>

<?php $__env->stopSection(); ?>



<?php echo $__env->make('common::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\news\Modules\Api\Providers/../Resources/views/api-settings.blade.php ENDPATH**/ ?>