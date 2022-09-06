<?php
    //$posts = data_get($categorySection, 'category.post', collect([]));
?>

              <div class="row mt-4">
                <?php $count = 0; ?>
                <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if($post->category_id == 2): ?>
                <?php if($count == 4) break; ?>
                <div class="col-lg-3 col-md-6 mb-4">
                  <a href="">
                    <a href="<?php echo e(route('article.detail', ['id' => $post->slug])); ?>">
                        <?php if(isFileExist(@$post->image, $result = @$post->image->medium_image)): ?>
                            <img src="<?php echo e(safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png')); ?> "
                                 data-original=" <?php echo e(basePath(@$post->image)); ?>/<?php echo e($result); ?> "
                                 class="img-fluid lazy" alt="<?php echo $post->title; ?>">
                        <?php else: ?>
                            <img src="<?php echo e(static_asset('default-image/default-358x215.png')); ?> "
                                 class="img-fluid" alt="<?php echo $post->title; ?>">
                        <?php endif; ?>
                    </a>
                    <div class="details-news">
                      <span class="date"><?php echo e($post->updated_at->format('F j, Y')); ?></span>
                        <h1 class="title-medium"><a href="<?php echo e(route('article.detail', ['id' => $post->slug])); ?>">
                        <p><?php echo \Illuminate\Support\Str::limit($post->title, 50); ?></p></a></h1>
                </div>
              </div>
              <?php $count++; ?>
              <?php endif; ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
<?php /**PATH C:\laragon\www\temancms\resources\views/site2/partials/home/category/style_2.blade.php ENDPATH**/ ?>