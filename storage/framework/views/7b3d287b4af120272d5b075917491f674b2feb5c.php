<div class="entry-header">
    <div class="entry-thumbnail">
        <a href="<?php echo e(route('article.detail', ['id' => @$firstPost->slug])); ?>">
            <?php if(isFileExist(@$firstPost->image, $result =@$firstPost->image->small_image)): ?>
                <img src="<?php echo e(safari_check() ? basePath(@$firstPost->image).'/'.$result : static_asset('default-image/default-358x215.png')); ?>"
                     data-original="<?php echo e(basePath($firstPost->image)); ?>/<?php echo e($result); ?>"
                     class="img-fluid" alt="<?php echo $firstPost->title; ?>">
            <?php else: ?>
                <img src="<?php echo e(static_asset('default-image/default-358x215.png')); ?>" class="img-fluid"
                     alt="<?php echo $firstPost->title; ?>">
            <?php endif; ?>
        </a>
    </div>
    <?php if($firstPost->post_type=="article"): ?>
        <div class="article-icon large-block">
            <img src="<?php echo e(static_asset('default-image/article-icon.svg')); ?>" alt="">
        </div>
    <?php elseif($firstPost->post_type=="audio"): ?>
        <div class="video-icon large-block">
            <img src="<?php echo e(static_asset('default-image/audio-icon.svg')); ?>" alt="audio-icon">
        </div>
    <?php endif; ?>
</div>
<?php /**PATH C:\laragon\www\temancms\resources\views/site2/partials/home/category/first_post.blade.php ENDPATH**/ ?>