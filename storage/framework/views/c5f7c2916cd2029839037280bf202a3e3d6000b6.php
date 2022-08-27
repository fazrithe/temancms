<?php
    //$posts = data_get($categorySection, 'category.post', collect([]));
    $topPosts = $posts->take(3);
    $bottomPosts = $posts->skip(3)->take(6);
?>
<div class="row d-flex justify-content-center mt-4">
    <div class="col-lg-6 list-berita-utama">
        <?php $__currentLoopData = $topPosts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $firstPost): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <a href="">
            <div class=" d-flex">
                <?php echo $__env->make('site2.partials.home.category.first_post', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="details-news ms-3">
                <span class="date"><a href="<?php echo e(route('article.date', date('Y-m-d', strtotime($firstPost->updated_at)))); ?>"> <?php echo e($firstPost->updated_at->format('F j, Y')); ?></a></span>
                <h1  class="title-medium"><p><?php echo strip_tags(\Illuminate\Support\Str::limit($firstPost->content, 120)); ?></p></h1>
            </div>
            </div>
            </a>
            <hr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>

    <?php $__currentLoopData = $bottomPosts->chunk(3); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $postGroup): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="col-lg-6 list-berita-utama">
        <?php $__currentLoopData = $postGroup; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <a href="">
            <div class=" d-flex">
                <?php echo $__env->make('site2.partials.home.category.post_block', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="details-news ms-3">
                    <span class="date"><a href="<?php echo e(route('article.date', date('Y-m-d', strtotime($post->updated_at)))); ?>"> <?php echo e($post->updated_at->format('F j, Y')); ?></a></span>
                    <h1  class="title-medium"><p><?php echo strip_tags(\Illuminate\Support\Str::limit($post->content, 120)); ?></p></h1>
            </div>
            </div>
        </a>
        <hr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
<?php /**PATH C:\laragon\www\temancms\resources\views/site2/partials/home/category/style_2.blade.php ENDPATH**/ ?>