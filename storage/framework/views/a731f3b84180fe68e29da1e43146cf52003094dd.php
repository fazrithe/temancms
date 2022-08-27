<div class="entry-header">
    <div class="entry-thumbnail col-10">
        <a href="<?php echo e(route('article.detail', ['id' => @$post->slug])); ?>">
            <?php if(isFileExist(@$post->image, $result =@$post->image->medium_image_three)): ?>
                <img src="<?php echo e(safari_check() ? basePath(@$post->image).'/'.$result : static_asset('default-image/default-358x215.png')); ?>"
                     data-original="<?php echo e(basePath($post->image)); ?>/<?php echo e($result); ?>"
                     class="img-fluid" alt="<?php echo $post->title; ?>">
            <?php else: ?>
                <img src="<?php echo e(static_asset('default-image/default-358x215.png')); ?>" class="img-fluid"
                     alt="<?php echo $post->title; ?>">
            <?php endif; ?>
        </a>
    </div>
    <?php if($post->post_type=="article"): ?>
        <div class="article-icon large-block">
            <img src="<?php echo e(static_asset('default-image/article-icon.svg')); ?>" alt="">
        </div>
    <?php elseif($post->post_type=="audio"): ?>
        <div class="video-icon large-block">
            <img src="<?php echo e(static_asset('default-image/audio-icon.svg')); ?>" alt="audio-icon">
        </div>
    <?php endif; ?>
</div>
<?php /**PATH C:\laragon\www\temancms\resources\views/site2/partials/home/category/post_block.blade.php ENDPATH**/ ?>