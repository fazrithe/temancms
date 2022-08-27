<div class="sg-section">
    <div class="section-content mt-3">
        <div class="section-title">
            <h1><?php echo e(__('latest_post')); ?></h1>
        </div>
        <div class="latest-post-area">
            <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="sg-post medium-post-style-1">
                    <div class="entry-header">
                        <div class="entry-thumbnail">
                            <a href="<?php echo e(route('article.detail', ['id' => $post->slug])); ?>">
                                <?php if(isFileExist($post->image, $result =  @$post->image->medium_image)): ?>
                                    <img src="<?php echo e(safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png')); ?> " data-original="<?php echo e(basePath($post->image)); ?>/<?php echo e($result); ?>" class="img-fluid"   alt="<?php echo $post->title; ?>"  >
                                <?php else: ?>
                                    <img src="<?php echo e(static_asset('default-image/default-358x215.png')); ?>"  class="img-fluid"   alt="<?php echo $post->title; ?>" >
                                <?php endif; ?>
                            </a>
                        </div>
                        <?php if($post->post_type=="video"): ?>
                            <div class="video-icon large-block">
                                <img src="<?php echo e(static_asset('default-image/video-icon.svg')); ?> " alt="video-icon">
                            </div>
                        <?php elseif($post->post_type=="audio"): ?>
                            <div class="video-icon large-block">
                                <img src="<?php echo e(static_asset('default-image/audio-icon.svg')); ?> " alt="audio-icon">
                            </div>
                        <?php endif; ?>
                    </div>
                    <div class="category">
                        <ul class="global-list">
                            <?php if(isset($post->category->category_name)): ?>
                                <li><a href="<?php echo e(url('category',$post->category->slug)); ?>"><?php echo e($post->category->category_name); ?></a></li>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <div class="entry-content align-self-center">
                        <h3 class="entry-title"><a
                                href="<?php echo e(route('article.detail', ['id' => $post->slug])); ?>"><?php echo \Illuminate\Support\Str::limit($post->title, 65); ?></a>
                        </h3>
                        <div class="entry-meta mb-2">
                            <ul class="global-list">
                                <li><?php echo e(__('post_by')); ?> <a href="<?php echo e(route('site.author',['id' => $post->user->id])); ?>"><?php echo e($post->user->first_name); ?> </a></li>
                                <li><a href="<?php echo e(route('article.date', date('Y-m-d', strtotime($post->updated_at)))); ?>"> <?php echo e($post->updated_at->format('F j, Y')); ?></a></li>
                            </ul>
                        </div>
                        <p><?php echo strip_tags(\Illuminate\Support\Str::limit($post->content, 120)); ?></p>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
        <?php if($posts->count() != 0): ?>
        <input type="hidden" id="last_id" value="1">
        <div class="col-sm-12 col-xs-12 d-none" id="latest-preloader-area">
            <div class="row latest-preloader">
                <div class="col-md-7 offset-md-5">
                    <img src="<?php echo e(static_asset('site/images/')); ?>/preloader-2.gif" alt="Image" class="tr-preloader img-fluid">
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-xs-12">
            <div class="row">
                <button class="btn-load-more <?php echo e($totalPostCount > 6? '':'d-none'); ?>" id="btn-load-more"> <?php echo e(__('load_more')); ?> </button>
                <button class="btn-load-more <?php echo e($totalPostCount > 6? 'd-none':''); ?>" id="no-more-data">
                    <?php echo e(__('no_more_records')); ?>                                            </button>
                    <input type="hidden" id="url" value="<?php echo e(url('')); ?>">
            </div>
        </div>
        <?php endif; ?>
    </div><!-- /.section-content -->
</div><!-- /.sg-section -->
<?php /**PATH C:\laragon\www\temancms\resources\views/site2/partials/home/category/latest_posts.blade.php ENDPATH**/ ?>