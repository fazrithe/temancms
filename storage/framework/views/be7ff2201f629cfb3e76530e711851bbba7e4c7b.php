<?php $__env->startSection('content'); ?>
<main id="reportase">
    <div class="container">

        <div class="row first-list justify-content-center text-center">
            <div class="col-lg-12  card-news mb-5">
                <a href="">
                <img class="img-fluid" src="./src/image/arah-parpol.jpg" alt="">
                <h1 class="mt-3">Arah Parpol Nonparlemen Jelang 2024: Antara Verifikasi & Koalisi</h1>
                <p class="summary">Apabila parpol nonparlemen bersatu dan solid, pasti akan banyak bakal capres atau koalisi partai yang akan mendekati mereka. </p>
            </a>

            <span >Penulis <a  class="author me-1" href="">Yazid Fahmi </a> 02/09/2022 </span>


            </div>

        </div>
        <div class="row">
            <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4 col-md-6 card-news mb-5">
                <a href="">
                    <div class="entry-thumbnail">
                        <a href="<?php echo e(route('article.detail', ['id' => $post->slug])); ?>">
                            <?php if(isFileExist($post->image, $result =  @$post->image->medium_image)): ?>
                                <img src="<?php echo e(safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png')); ?> " data-original=" <?php echo e(basePath($post->image)); ?>/<?php echo e($result); ?> " class="img-fluid"   alt="<?php echo $post->title; ?>"  >
                            <?php else: ?>
                                <img src="<?php echo e(static_asset('default-image/default-358x215.png')); ?> "  class="img-fluid"   alt="<?php echo $post->title; ?>" >
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
                    <h1 class="mt-3"><a
                        href="<?php echo e(route('article.detail', ['id' => $post->slug])); ?>"><?php echo \Illuminate\Support\Str::limit($post->title, 65); ?></a>
                    </h1>
                <p class="summary"><?php echo strip_tags(\Illuminate\Support\Str::limit($post->content, 120)); ?></p>
            </a>

            <span >Penulis <a  class="author me-1" href="<?php echo e(route('site.author',['id' => $post->user->id])); ?>"><?php echo e($post->user->first_name); ?>  </a> <?php echo e($post->updated_at->format('F j, Y')); ?></span>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
        <div class="row mt-5 justify-content-center text-center">
            <div class="col-lg-6 pagination-buttons">

                <?php if($posts->count() != 0): ?>
                <input type="hidden" id="last_id" value="1">
                <input type="hidden" id="category_id" value="<?php echo e($id); ?>">
                <div class="col-sm-12 col-xs-12 d-none" id="latest-preloader-area">
                    <div class="row latest-preloader">
                        <div class="col-md-7 offset-md-5">
                            <img src="<?php echo e(static_asset('site/images/')); ?>/preloader-2.gif" alt="Image" class="tr-preloader img-fluid">
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-xs-12">
                    <div class="row">
                        <button class="btn-load-more <?php echo e($totalPostCount > 6? '':'d-none'); ?>" id="btn-load-more-category"> <?php echo e(__('load_more')); ?> </button>
                        <button class="btn-load-more <?php echo e($totalPostCount > 6? 'd-none':''); ?>" id="no-more-data">
                            <?php echo e(__('no_more_records')); ?>                                            </button>
                            <input type="hidden" id="url" value="<?php echo e(url('')); ?>">
                    </div>
                </div>
            <?php endif; ?>
            </div>


        </div>
    </div>
</main>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('site2.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\temancms\resources\views/site2/pages/category_posts.blade.php ENDPATH**/ ?>