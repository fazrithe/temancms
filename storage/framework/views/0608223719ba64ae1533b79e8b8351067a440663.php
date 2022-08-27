<?php $__env->startSection('api'); ?>
    aria-expanded="true"
<?php $__env->stopSection(); ?>
<?php $__env->startSection('api-show'); ?>
    show
<?php $__env->stopSection(); ?>
<?php $__env->startSection('api_active'); ?>
    active
<?php $__env->stopSection(); ?>
<?php $__env->startSection('app-intro'); ?>
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

                                        <a class="nav-item nav-link" id="ios-settings"
                                           href="<?php echo e(route('ios-settings')); ?>"
                                           role="tab"><?php echo e(__('ios_settings')); ?></a>

                                        <a class="nav-item nav-link" id="app-config"
                                           href="<?php echo e(route('app-config')); ?>"
                                           role="tab"><?php echo e(__('app_config')); ?></a>

                                        <a class="nav-item nav-link" id="ads-config"
                                           href="<?php echo e(route('ads-config')); ?>"
                                           role="tab"><?php echo e(__('ads_config')); ?></a>

                                        <a class="nav-item nav-link active" id="app-intro"
                                           href="<?php echo e(route('app-intro')); ?>"
                                           role="tab"><?php echo e(__('app_intro')); ?></a>

                                    </div>
                                </nav>


                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="clearfix"></div>
                            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                <div class="panel panel-default bg-white">
                                    <div class="panel-heading" role="tab" id="headingOne">
                                        <h4 class="panel-title">
                                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="intro ">
                                                + <?php echo e(__('add_intro')); ?>

                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                        <div class="panel-body">
                                            <div class="tab-content" id="nav-tabContent">
                                                    <div class="tab-pane fade show active" id="ads-config" role="tabpanel">
                                                        <?php echo Form::open(['route'=>'add-intro','method' => 'post', 'enctype' => "multipart/form-data"]); ?>

                                                        <div class="add-new-page  bg-white p-20 pt-0 m-b-20">
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    <label for="language"><?php echo e(__('select_language')); ?> *</label>
                                                                    <select class="form-control" name="language" id="language">
                                                                        <?php $__currentLoopData = $activeLang; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                            <option
                                                                                <?php if(App::getLocale()==$lang->code): ?> Selected
                                                                                <?php endif; ?> value="<?php echo e($lang->code); ?>"><?php echo e($lang->name); ?>

                                                                            </option>
                                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    <label for="title" class="col-form-label"><?php echo e(__('title')); ?>

                                                                        *</label>
                                                                    <input id="title" name="title" type="text" class="form-control"
                                                                           required>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    <label for="description"
                                                                           class="col-form-label"><?php echo e(__('description')); ?></label> *
                                                                    <textarea id="description" class="form-control" rows="9" cols="9"
                                                                              name="description"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-12">
                                                                <div class="field" align="left">
                                                                    <label for="images" class="upload-file-btn btn btn-primary"><i
                                                                            class="fa fa-folder input-file"
                                                                            aria-hidden="true"></i> <?php echo e(__('select_image')); ?> *
                                                                    </label><br>
                                                                    <input type="file" id="images" class="d-none " name="cover_image" required
                                                                    />
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12 m-t-20">
                                                                    <div class="form-group form-float form-group-sm text-right">
                                                                        <button type="submit" name="btnsubmit" class="btn btn-primary pull-right"><i
                                                                                class="m-r-10 mdi mdi-plus"></i><?php echo e(__('add_intro')); ?></button>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <?php echo e(Form::close()); ?>

                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <div class="add-new-page  bg-white p-20 m-b-20">
                                    <div class="block-header m-b-20">
                                        <h2><?php echo e(__('app_intro')); ?></h2>
                                    </div>
                                    <div class="table-responsive all-pages">
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                            <tr role="row">
                                                <th>#</th>
                                                <th><?php echo e(__('title')); ?></th>
                                                <th><?php echo e(__('language')); ?></th>
                                                <th><?php echo e(__('description')); ?></th>
                                                <th><?php echo e(__('image')); ?></th>
                                                <?php if(Sentinel::getUser()->hasAccess(['api_write']) || Sentinel::getUser()->hasAccess(['api_delete'])): ?>
                                                    <th><?php echo e(__('options')); ?></th>
                                                <?php endif; ?>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <?php $__currentLoopData = $app_intros; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $app_intro): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr role="row" class="odd" id="row_<?php echo e($app_intro->id); ?>">
                                                    <td class="sorting_1"><?php echo e($key+1); ?></td>
                                                    <td><?php echo e($app_intro->title); ?></td>
                                                    <td><?php echo e($app_intro->language); ?></td>
                                                    <td><?php echo e($app_intro->description); ?></td>
                                                    <td>
                                                        <div class="post-image">
                                                            <?php if(isFileExist(@$app_intro, $result = @$app_intro->image)): ?>
                                                                <img
                                                                    src=" <?php echo e(basePath($app_intro)); ?>/<?php echo e($result); ?> "
                                                                    data-src="<?php echo e(basePath($app_intro)); ?>/<?php echo e($result); ?>"
                                                                    alt="image" class="img-responsive img-thumbnail lazyloaded" width="200"
                                                                    height="200">

                                                            <?php else: ?>
                                                                <img src="<?php echo e(static_asset('default-image/default-100x100.png')); ?> " width="200"
                                                                     height="200" alt="image"
                                                                     class="img-responsive img-thumbnail">
                                                        <?php endif; ?>
                                                    </td>
                                                    <?php if(Sentinel::getUser()->hasAccess(['api_write']) || Sentinel::getUser()->hasAccess(['api_delete'])): ?>
                                                        <td>
                                                            <div class="dropdown">
                                                                <button
                                                                    class="btn bg-primary dropdown-toggle btn-select-option"
                                                                    type="button" data-toggle="dropdown">...
                                                                    <span class="caret"></span>
                                                                </button>
                                                                <ul class="dropdown-menu options-dropdown">
                                                                    <?php if(Sentinel::getUser()->hasAccess(['api_write'])): ?>
                                                                        <li>
                                                                            <a href="<?php echo e(route('edit-intro',['id'=>$app_intro->id])); ?>"><i
                                                                                    class="fa fa-edit option-icon"></i><?php echo e(__('edit')); ?>

                                                                            </a>
                                                                        </li>
                                                                    <?php endif; ?>
                                                                    <?php if(Sentinel::getUser()->hasAccess(['api_delete'])): ?>
                                                                        <li>
                                                                            <a href="javascript:void(0)"
                                                                               onclick="delete_item('app_intros','<?php echo e($app_intro->id); ?>')"><i
                                                                                    class="fa fa-trash option-icon"></i><?php echo e(__('delete')); ?>

                                                                            </a>
                                                                        </li>
                                                                    <?php endif; ?>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                    <?php endif; ?>
                                                </tr>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-sm-6">
                                            <div class="block-header">
                                                <h2><?php echo e(__('showing')); ?> <?php echo e($app_intros->firstItem()); ?> <?php echo e(__('to')); ?> <?php echo e($app_intros->lastItem()); ?>

                                                    of <?php echo e($app_intros->total()); ?> <?php echo e(__('entries')); ?></h2>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 text-right">
                                            <div class="table-info-pagination float-right">
                                                <nav aria-label="Page navigation example">
                                                    <?php echo $app_intros->render(); ?>

                                                </nav>
                                            </div>
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



<?php echo $__env->make('common::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\news\Modules\Api\Providers/../Resources/views/intro.blade.php ENDPATH**/ ?>