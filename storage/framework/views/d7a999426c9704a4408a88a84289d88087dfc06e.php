<?php $__env->startSection('api'); ?>
    aria-expanded="true"
<?php $__env->stopSection(); ?>
<?php $__env->startSection('api-show'); ?>
    show
<?php $__env->stopSection(); ?>
<?php $__env->startSection('api_active'); ?>
    active
<?php $__env->stopSection(); ?>
<?php $__env->startSection('ios-settings'); ?>
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

                                        <a class="nav-item nav-link" id="api-settings"
                                           href="<?php echo e(route('api-settings')); ?>"
                                           role="tab"><?php echo e(__('api_settings')); ?></a>

                                        <a class="nav-item nav-link" id="android-settings"
                                           href="<?php echo e(route('android-settings')); ?>"
                                           role="tab"><?php echo e(__('android_settings')); ?></a>

                                        <a class="nav-item nav-link active" id="ios-settings"
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




                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="latest_ipa_version"
                                                       class="col-form-label"><?php echo e(__('latest_ipa_version')); ?></label>
                                                <input id="latest_ipa_version" class="form-control" name="latest_ipa_version"
                                                       value="<?php echo e(settingHelper('latest_ipa_version')); ?>">
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="latest_ipa_code"
                                                       class="col-latest_ipa_code-label"><?php echo e(__('latest_ipa_code')); ?></label>
                                                <input id="latest_ipa_code" class="form-control" name="latest_ipa_code"
                                                       value="<?php echo e(settingHelper('latest_ipa_code')); ?>">
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="ipa_file_url"
                                                       class="col-form-label"><?php echo e(__('ipa_file_url')); ?></label>
                                                <input id="ipa_file_url" class="form-control" name="ipa_file_url"
                                                       value="<?php echo e(settingHelper('ipa_file_url')); ?>">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">

                                        <div class="form-group">
                                                <label for="whats_new_on_latest_ipa"
                                                       class="col-form-label"><?php echo e(__('whats_new_on_latest_ipa')); ?></label>
                                                <textarea name="whats_new_on_latest_ipa" id="whats_new_on_latest_ipa"
                                                          class="form-control"><?php echo e(settingHelper('whats_new_on_latest_ipa')); ?></textarea>
                                            </div>
                                        </div>
                                        <div class="row p-l-15">
                                            <div class="col-12 col-md-4">
                                                <div class="form-title">
                                                    <label for="visibility"><?php echo e(__('update_skipable')); ?></label>
                                                </div>
                                            </div>
                                            <div class="col-3 col-md-2">
                                                <label class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" name="ios_update_skipable_status" id="visibility_show"
                                                           value="true"
                                                           <?php echo e(settingHelper('ios_update_skipable_status') == 'true'? 'checked':""); ?> class="custom-control-input">
                                                    <span class="custom-control-label"><?php echo e(__('yes')); ?></span>
                                                </label>
                                            </div>
                                            <div class="col-3 col-md-2">
                                                <label class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" name="ios_update_skipable_status" id="visibility_hide"
                                                           value="false"
                                                           class="custom-control-input" <?php echo e(settingHelper('ios_update_skipable_status') == 'false'? 'checked':""); ?>>
                                                    <span class="custom-control-label"><?php echo e(__('no')); ?></span>
                                                </label>
                                            </div>
                                        </div>
                                        <?php if(Sentinel::getUser()->hasAccess(['api_write'])): ?>
                                            <div class="row">
                                                <div class="col-12 m-t-20">
                                                    <div class="form-group form-float form-group-sm text-right">
                                                        <button type="submit" name="status"
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



<?php echo $__env->make('common::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\news\Modules\Api\Providers/../Resources/views/ios-settings.blade.php ENDPATH**/ ?>