<?php
    $blockPosts = $posts->take(3);
?>

<main>
    <div class="container">
      <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-md-12 ">
                <?php $__currentLoopData = $sliderPosts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="featured-artikel ">
                  <a href="singlepost.html">
                    <?php echo $__env->make('site2.partials.home.primary.slider', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="details-news">
                        <span class="date">
                            <ul class="global-list">
                                <li><?php echo e(__('post_by')); ?> <a
                                        href="<?php echo e(route('site.author',['id' => $post['user']->id])); ?>"><?php echo e(data_get($post, 'user.first_name')); ?></a>
                                </li>
                                <li><a href="<?php echo e(route('article.date', date('Y-m-d', strtotime($post->updated_at)))); ?>"><?php echo e($post->updated_at->format('F j, Y')); ?></a>
                                </li>
                            </ul>
                        </span>
                      <h1 class="title-xtra-large"><a href="<?php echo e(route('article.detail', ['id' => $post->slug])); ?>"><?php echo \Illuminate\Support\Str::limit($post->title, 50); ?></a></h1>

                  </div>
                </a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
              </div>
              <div class="col-lg-6">
                    
                    <?php $__currentLoopData = $blockPosts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <a href="">
                                <div class=" d-flex">
                                    <div class="entry-thumbnail col-5">
                                        <a href="<?php echo e(route('article.detail', ['id' => $post->slug])); ?>">
                                            <?php if(isFileExist(@$post['image'], $result = @$post['image']->medium_image)): ?>
                                                <img src="<?php echo e(safari_check() ? basePath(@$post['image']).'/'.$result : static_asset('default-image/default-358x215.png')); ?> "
                                                     data-original=" <?php echo e(basePath(@$post['image'])); ?>/<?php echo e($result); ?> "
                                                     class="img-fluid" alt="<?php echo $post->title; ?>">
                                            <?php else: ?>
                                                <img src="<?php echo e(static_asset('default-image/default-358x215.png')); ?> "
                                                     class="img-fluid" alt="<?php echo $post->title; ?>">
                                            <?php endif; ?>
                                        </a>
                                    </div>
                                    <div class="details-news ms-3">
                                    <span class="date"><a href="<?php echo e(route('article.date', date('Y-m-d', strtotime($post->updated_at)))); ?>"> <?php echo e($post->updated_at->format('F j, Y')); ?></a></span>
                                    <h1  class="title-medium"><a href="<?php echo e(route('article.detail', ['id' => $post->slug])); ?>">
                                        <p><?php echo \Illuminate\Support\Str::limit($post->title, 50); ?></p></a></h1>
                                  </div>
                                  </div>
                                </a>
                                <hr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
</main>


<?php /**PATH C:\laragon\www\temancms\resources\views/site2/partials/home/primary/style_1.blade.php ENDPATH**/ ?>