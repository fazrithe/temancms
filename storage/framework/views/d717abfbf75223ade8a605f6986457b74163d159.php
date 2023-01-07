<?php $__env->startSection('post-aria-expanded'); ?>
    aria-expanded="true"
<?php $__env->stopSection(); ?>
<?php $__env->startSection('post-show'); ?>
    show
<?php $__env->stopSection(); ?>
<?php $__env->startSection('post'); ?>
    active
<?php $__env->stopSection(); ?>
<?php $__env->startSection('post-active'); ?>
    active
<?php $__env->stopSection(); ?>
<?php $__env->startSection('modal'); ?>
    <?php echo $__env->make('gallery::image-gallery', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('gallery::video-gallery', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>


<?php $__env->startSection('content'); ?>

    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            <!-- page info start-->
            <?php echo Form::open(['route'=>['update-post','article',$post->id],'method' => 'post','enctype'=>'multipart/form-data']); ?>

            <input type="hidden" id="images" value="<?php echo e($countImage); ?>">
            <input type="hidden" id="videos" value="<?php echo e($countVideo); ?>">
            <input type="hidden" id="imageCount" value="1">
            <div class="row clearfix">
                <div class="col-12">
                    <div class="add-new-header clearfix m-b-20">
                        <div class="row">
                            <div class="col-6">
                                <div class="block-header">
                                    <h2><?php echo e(__('update_post')); ?></h2>
                                </div>
                            </div>
                            <div class="col-6 text-right">
                                <a href="<?php echo e(route('post')); ?>" class="btn btn-primary btn-add-new"><i
                                        class="fas fa-list"></i> <?php echo e(__('posts')); ?>

                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
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
                        </div>

                        <!-- Main Content section start -->
                        <div class="col-12 col-lg-9">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2><?php echo e(__('posts_details')); ?></h2>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post_title" class="col-form-label"><?php echo e(__('title')); ?>*</label>
                                        <input id="post_title" name="title" value="<?php echo e($post->title); ?>" type="text"
                                               class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post-slug" class="col-form-label"><b><?php echo e(__('slug')); ?></b>
                                            (<?php echo e(__('slug_message')); ?>)</label>
                                        <input id="post-slug" value="<?php echo e($post->slug); ?>" name="slug" type="text"
                                               class="form-control">
                                    </div>
                                </div>
                                <!-- tinemcey start -->
                                <div class="row p-l-15">
                                    <div class="col-12">
                                        <label for="post_content" class="col-form-label"><?php echo e(__('content')); ?>*</label>
                                        <textarea name="content" value="<?php echo e($post->content); ?>" id="post_content"
                                                  cols="30" rows="5">
                                                        <?php echo $post->content; ?>

                                                    </textarea>
                                    </div>
                                </div>
                                <!-- tinemcey end -->
                            </div>
                            <div class="add-new-page  bg-white p-20 m-b-20 add-new-content">
                                <div class="block-header">
                                    <h2><?php echo e(__('add_content')); ?></h2>
                                </div>
                                <div class="row pb-3">
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('text')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/text.png')); ?>"><br>
                                            <label><?php echo e(__('text')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('image')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/image.png')); ?>"><br>
                                            <label><?php echo e(__('image')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('image-text')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/image-text.png')); ?>"><br>
                                            <label><?php echo e(__('image_left')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('text-image')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/text-image.png')); ?>"><br>
                                            <label><?php echo e(__('image_right')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('text-image-text')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/text-image-text.png')); ?>"><br>
                                            <label><?php echo e(__('image_center')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('video')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/video.png')); ?>"><br>
                                            <label><?php echo e(__('video')); ?></label>
                                        </div>
                                    </div>

                                </div>
                                <div class="row pb-3">
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('ads')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/ads.png')); ?>"><br>
                                            <label><?php echo e(__('ads')); ?></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="block-header">
                                    <h2><?php echo e(__('embadded')); ?></h2>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('code')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/code.png')); ?>"><br>
                                            <label><?php echo e(__('code')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('twitter-embed')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/twitter.png')); ?>"><br>
                                            <label><?php echo e(__('twitter')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('vimeo-embed')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/vimeo.png')); ?>"><br>
                                            <label><?php echo e(__('vimeo')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-md-2 text-center area">
                                        <div class="item" onclick="addContent('youtube-embed')">
                                            <img class="pb-3" src="<?php echo e(static_asset('default-image/content-icon/youtube.png')); ?>"><br>
                                            <label><?php echo e(__('youtube')); ?></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="content-area">
                                
                                <?php
                                    $content_count = 0;
                                ?>
                                <?php $__currentLoopData = $post_contents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page => $content): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                    $page = array_keys($content);
                                    $content_count++;

                                    ?>
                                    <?php echo $__env->make('post::contents/'.$page[0], compact('content_count', 'content'), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                
                            </div>
                            <!-- visibility section start -->
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2><?php echo e(__('visibility')); ?></h2>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-12 col-md-4">
                                        <div class="form-title">
                                            <label for="visibility"><?php echo e(__('visibility')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-3 col-md-2">
                                        <label class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" <?php if($post->visibility==1): ?> checked
                                                   <?php endif; ?> name="visibility" id="visibility_show" value="1"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"><?php echo e(__('show')); ?></span>
                                        </label>
                                    </div>
                                    <div class="col-3 col-md-2">
                                        <label class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" <?php if($post->visibility==0): ?> checked
                                                   <?php endif; ?> name="visibility" id="visibility_hide" value="0"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"><?php echo e(__('hide')); ?></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="featured_post"><?php echo e(__('add_to_featured')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" <?php if($post->featured==1): ?> checked
                                                   <?php endif; ?> id="featured_post" name="featured"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="add_to_breaking"><?php echo e(__('add_to_breaking')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="add_to_breaking" <?php if($post->breaking==1): ?> checked
                                                   <?php endif; ?> name="breaking" class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="add_to_slide"><?php echo e(__('add_to_slider')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="add_to_slide" <?php if($post->slider==1): ?> checked
                                                   <?php endif; ?> name="slider" class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="recommended"><?php echo e(__('add_to_recommended')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="recommended" <?php if($post->recommended==1): ?> checked
                                                   <?php endif; ?> name="recommended" class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="editor_picks"><?php echo e(__('add_to_editor_picks')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="editor_picks" name="editor_picks"
                                                   class="custom-control-input" <?php if($post->editor_picks==1): ?> checked
                                                   <?php endif; ?>>
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label
                                                for="auth_required"><?php echo e(__('show_only_to_authenticate_users')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="auth_required"
                                                   <?php if($post->auth_required==1): ?> checked <?php endif; ?> name="auth_required"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- visibility section end -->
                            <!-- SEO section start -->
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2><?php echo e(__('seo_details')); ?></h2>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="meta_title"><b><?php echo e(__('title')); ?></b> (<?php echo e(__('meta_title')); ?>)</label>
                                        <input class="form-control meta" value="<?php echo e($post->meta_title ?? $post->title); ?>"
                                               id="meta_title" name="meta_title" data-type="title">
                                        <p class="display-nothing alert alert-danger mt-2" role="alert">
                                            <?php echo e(__('current_characters')); ?>: <span class="characters"></span>, <?php echo e(__('meta_title').' '. __('should_bd') .' '. __('in_between') .' '. '30-60 ' . __('characters')); ?>

                                        </p>
                                        <p class="display-nothing alert alert-success mt-2" role="alert">
                                            <?php echo e(__('current_characters')); ?>: <span class="characters"></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post-keywords" class="col-form-label"><b><?php echo e(__('keywords')); ?></b>
                                            </label>
                                        <input id="post-keywords" name="meta_keywords"
                                               value="<?php echo e($post->meta_keywords); ?>" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post_tags" class="col-form-label"><?php echo e(__('tags')); ?>(<?php echo e(__('meta_tag')); ?>)</label>
                                        <input id="post_tags" name="tags" type="text" value="<?php echo e($post->tags); ?>"
                                               data-role="tagsinput" class="form-control"/>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post_desc"><b><?php echo e(__('description')); ?></b> (<?php echo e(__('meta_description')); ?>

                                            )</label>
                                        <textarea class="form-control meta" id="meta_description" name="meta_description" data-type="description"
                                                  rows="3"><?php echo e($post->meta_description); ?></textarea>
                                        <p class="display-nothing alert alert-danger mt-2" role="alert">
                                            <?php echo e(__('current_characters')); ?>: <span class="characters"></span>, <?php echo e(__('meta_title').' '. __('should_bd') .' '. __('in_between') .' '. '30-60 ' . __('characters')); ?>

                                        </p>
                                        <p class="display-nothing alert alert-success mt-2" role="alert">
                                            <?php echo e(__('current_characters')); ?>: <span class="characters"></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- SEO section end -->
                        </div>
                        <!-- Main Content section end -->

                        <!-- right sidebar start -->
                        <div class="col-12 col-lg-3">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2><?php echo e(__('image')); ?></h2>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <!-- Large modal -->
                                        <button type="button" id="btn_image_modal"
                                                class="btn btn-primary btn-image-modal" data-id="1" data-toggle="modal"
                                                data-target=".image-modal-lg"><?php echo e(__('add_image')); ?></button>
                                        <input id="image_id" value="<?php echo e($post->image_id); ?>" name="image_id" type="hidden"
                                               class="form-control image_id">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-group text-center">
                                            <?php if(isFileExist($post->image, $result = @$post->image->thumbnail)): ?>
                                                <img src=" <?php echo e(basePath($post->image)); ?>/<?php echo e($result); ?> "
                                                     id="image_preview" width="200" height="200"
                                                     class="img-responsive img-thumbnail image_preview" alt="<?php echo $post->title; ?>">
                                            <?php else: ?>
                                                <img src="<?php echo e(static_asset('default-image/default-100x100.png')); ?> " id="image_preview"
                                                     width="200" height="200" class="img-responsive img-thumbnail image_preview"
                                                     alt="<?php echo $post->title; ?>">
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-group text-center">
                                            <label for="post_language"><?php echo e(__('Title Image')); ?></label>
                                            <input type="text" class="form-control" name="title_image" value="<?php echo e($post->title_image); ?>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post_language"><?php echo e(__('select_language')); ?>*</label>
                                        <select class="form-control dynamic-category" id="post_language" name="language"
                                         data-dependent="category_id">
                                            <?php $__currentLoopData = $activeLang; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option
                                                    <?php if($post->language==$lang->code): ?> Selected
                                                    <?php endif; ?> value="<?php echo e($lang->code); ?>"><?php echo e($lang->name); ?>

                                                </option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="category_id"><?php echo e(__('category')); ?>*</label>
                                        <select class="form-control dynamic" id="category_id" name="category_id"
                                                data-dependent="sub_category_id" required>
                                            <option value=""><?php echo e(__('select_category')); ?></option>
                                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option <?php if($post->category_id == $category->id): ?> Selected
                                                        <?php endif; ?> value="<?php echo e($category->id); ?>"><?php echo e($category->category_name); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="sub_category_id"><?php echo e(__('sub_category')); ?></label>
                                        <select class="form-control dynamic" id="sub_category_id" name="sub_category_id">
                                            <option value=""><?php echo e(__('select_sub_category')); ?></option>
                                            <?php $__currentLoopData = $subCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option <?php if($post->sub_category_id == $subCategory->id): ?> Selected
                                                        <?php endif; ?> value="<?php echo e($subCategory->id); ?>"><?php echo e($subCategory->sub_category_name); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="col-md-12">
                                    <div class="block-header">
                                        <h2><?php echo e(__('article_detail')); ?></h2>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="custom-control custom-radio detail-control-inline">
                                                
                                                <input type="radio" name="layout" id="detail_style_1" value="default" <?php echo e(@$post->layout=="default" ? 'checked': ''); ?>  class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="<?php echo e(static_asset('default-image/Detail/detail_1.png')); ?>" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="custom-control custom-radio detail-control-inline">
                                                <input type="radio" name="layout" id="detail_style_2" value="style_2" <?php echo e(@$post->layout=="style_2" ? 'checked': ''); ?>  class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="<?php echo e(static_asset('default-image/Detail/detail_2.png')); ?>" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="custom-control custom-radio detail-control-inline">
                                                <input type="radio" name="layout" id="detail_style_3" value="style_3" <?php echo e(@$post->layout=="style_3" ? 'checked': ''); ?>  class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="<?php echo e(static_asset('default-image/Detail/detail_3.png')); ?>" alt="" class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2><?php echo e(__('publish')); ?>*</h2>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <select class="form-control" id="post_status" name="status" required>
                                            <option <?php if($post->status==1 && $post->scheduled==0): ?> selected
                                                    <?php endif; ?> value="1"><?php echo e(__('published')); ?></option>
                                            <option <?php if($post->status==0 && $post->scheduled==0): ?> selected
                                                    <?php endif; ?> value="0"><?php echo e(__('draft')); ?></option>
                                            <option <?php if($post->status==0 && $post->scheduled==1): ?> selected
                                                    <?php endif; ?> value="2"><?php echo e(__('scheduled')); ?></option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-12 divScheduleDate"
                                     <?php if($post->post_status==0 && $post->scheduled==1): ?> <?php else: ?> id="display-nothing" <?php endif; ?>>
                                    <label for="scheduled_date"><?php echo e(__('schedule_date')); ?></label>
                                    <div class="input-group">
                                        <label class="input-group-text" for="scheduled_date"><i
                                                class="fa fa-calendar-alt"></i></label>
                                        <input type="text" class="form-control date" id="scheduled_date"
                                               value="<?php echo e(Carbon\Carbon::parse($post->scheduled_date)->format('m/d/Y g:i A')); ?>"
                                               name="scheduled_date"/>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label class="custom-control" for="btnSubmit"></label>
                                        <button type="submit" name="btnSubmit" class="btn btn-primary pull-right"><i
                                                class="m-r-10 mdi mdi-content-save-all"></i><?php echo e(__('update_post')); ?>

                                        </button>
                                        <label class="" for="btnSubmit"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- right sidebar end -->
                    </div>
                </div>
            </div>
        <?php echo Form::close(); ?>

        <!-- page info end-->
        </div>
    </div>

<input type="hidden" value="<?php echo e($content_count); ?>" id="content_number">

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
        $(document).ready(function () {

             $('.dynamic-category').change(function () {
                if ($(this).val() != '') {
                    var select = $(this).attr("id");
                    var value = $(this).val();
                    var dependent = $(this).data('dependent');
                    var _token = "<?php echo e(csrf_token()); ?>";
                    $.ajax({
                        url: "<?php echo e(route('category-fetch')); ?>",
                        method: "POST",
                        data: {select: select, value: value, _token: _token},
                        success: function (result) {
                            $('#' + dependent).html(result);
                        }

                    })
                }
            });

            $('#post_language').change(function () {
                $('#category_id').val('');
                $('#sub_category_id').val('');
            });



            $('.dynamic').change(function () {
                if ($(this).val() != '') {
                    var select = $(this).attr("id");
                    var value = $(this).val();
                    var dependent = $(this).data('dependent');
                    var _token = "<?php echo e(csrf_token()); ?>";
                    $.ajax({
                        url: "<?php echo e(route('subcategory-fetch')); ?>",
                        method: "POST",
                        data: {select: select, value: value, _token: _token},
                        success: function (result) {
                            $('#' + dependent).html(result);
                        }

                    })
                }
            });

            $('#category_id').change(function () {
                $('#sub_category_id').val('');
            });


        });

    </script>
    <script>
        addContent = function(value) {

            var content_number = $("#content_number").val();
            content_number++;

            $.ajax({
                url: "<?php echo e(route('add-content')); ?>",
                method: "GET",
                data: {value: value, content_count:content_number},
                success: function (result) {
                    $('.content-area').append(result);
                    $("#content_number").val(content_number);

                    // auto scrolling to newly added element
                    var newlyAdded = 'content_'+content_number;
                    $('body, html').animate({ scrollTop: $('.'+newlyAdded).offset().top }, 1000);
                }

            });
        }


        $(document).on("click", ".add-new-page .row_remove", function () {
            let element = $(this).parents('.add-new-page');
            //element.remove(1000);
            element.hide("slow", function(){ $(this).remove(); })
        });
    </script>

    <script type="text/javascript" src="<?php echo e(static_asset('js/post.js')); ?>"></script>
    <script src="<?php echo e(static_asset('js/tagsinput.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('common::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\temancms\Modules\Post\Providers/../Resources/views/article_edit.blade.php ENDPATH**/ ?>