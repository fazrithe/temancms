<div class="entry-header">
    <div class="header-top">
        <h3 class="entry-title title-xtra-large text-center"><?php echo $post->title ?? ''; ?></h3>
        <div class="entry-meta">
            <ul class="global-list">
                
            </ul>
        </div><!-- /.entry-meta -->
    </div>
    <div class="entry-thumbnail text-center" height="100%">
        <?php echo $__env->make('site2.pages.article.partials.detail_image', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        
    </div>
    <div class="date-read mb-3 mt-3 d-flex align-items-center justify-content-between">
        <div class="d-flex">
            <p class="date text-center"><?php echo e(date('F j, Y', strtotime($post->updated_at))); ?></p>
        </div>
        <div class="col-9 text-end">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
              </svg> <?php echo e($post->total_hit); ?>

        </div>
        <div class="share-post ms-2">
            <a class="" href="http://www.facebook.com/sharer.php?u=<?php echo e(url()->current()); ?>">
            <svg class="me-2" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none">
                <rect width="24" height="24" rx="12" fill="#1877F2"></rect>
                <path d="M16.6711 15.4688L17.2031 12H13.875V9.75C13.875 8.80078 14.3391 7.875 15.8297 7.875H17.3438V4.92188C17.3438 4.92188 15.9703 4.6875 14.6578 4.6875C11.9156 4.6875 10.125 6.34922 10.125 9.35625V12H7.07812V15.4688H10.125V23.8547C10.7367 23.9508 11.3625 24 12 24C12.6375 24 13.2633 23.9508 13.875 23.8547V15.4688H16.6711Z" fill="white"></path>
                </svg>
            </a>
            <a href="http://twitter.com/share?url=<?php echo e(url()->current()); ?>">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none">
                    <rect width="24" height="24" rx="12" fill="#1D9BF0"></rect>
                    <path d="M9.80408 18.33C15.1261 18.33 18.0361 13.92 18.0361 10.098C18.0361 9.972 18.0361 9.846 18.0301 9.726C18.5941 9.318 19.0861 8.808 19.4761 8.226C18.9601 8.454 18.4021 8.61 17.8141 8.682C18.4141 8.322 18.8701 7.758 19.0861 7.08C18.5281 7.41 17.9101 7.65 17.2501 7.782C16.7221 7.218 15.9721 6.87 15.1381 6.87C13.5421 6.87 12.2461 8.166 12.2461 9.762C12.2461 9.99 12.2701 10.212 12.3241 10.422C9.91808 10.302 7.78808 9.15 6.36008 7.398C6.11408 7.824 5.97008 8.322 5.97008 8.85C5.97008 9.852 6.48008 10.74 7.26008 11.256C6.78608 11.244 6.34208 11.112 5.95208 10.896C5.95208 10.908 5.95208 10.92 5.95208 10.932C5.95208 12.336 6.94808 13.5 8.27408 13.77C8.03408 13.836 7.77608 13.872 7.51208 13.872C7.32608 13.872 7.14608 13.854 6.96608 13.818C7.33208 14.97 8.40008 15.804 9.66608 15.828C8.67608 16.602 7.42808 17.064 6.07208 17.064C5.83808 17.064 5.61008 17.052 5.38208 17.022C6.64808 17.85 8.17208 18.33 9.80408 18.33Z" fill="white"></path>
                    </svg>
            </a>
        </div>
    </div>
</div>

<div class="entry-content">
    <?php if(@$post->post_type == 'audio'): ?>
        <?php echo $__env->make('site2.pages.article.partials.audio', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <div class="paragraph">
        <?php echo $post->content; ?>

    </div>
    <?php if(isset($post->read_more_link)): ?>
        <div class="rss-content-actual-link">
            <a href="<?php echo e($post->read_more_link); ?>" class="btn btn-primary" target="_blank"><?php echo e(__('read_actual_content')); ?> <i class="fa fa-long-arrow-right"></i>
            </a>
        </div>
    <?php endif; ?>
    <?php echo $__env->make('site2.pages.article.partials.content', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php if(settingHelper('adthis_option')==1 and settingHelper('addthis_public_id')!=null and settingHelper('addthis_toolbox')!=null): ?>
        <?php echo base64_decode(settingHelper('addthis_toolbox')); ?>

    <?php endif; ?>
    <?php if(@$post->post_type == 'trivia-quiz'): ?>
        <?php echo $__env->make('site2.pages.article.partials.trivia-quiz', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <?php if(@$post->post_type == 'personality-quiz'): ?>
        <?php echo $__env->make('site2.pages.article.partials.personality-quiz', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>

    <?php if(@$post->user->permissions['author_show'] == 1): ?>
        <?php echo $__env->make('site2.pages.article.partials.author', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
</div>
<?php /**PATH C:\laragon\www\temancms\resources\views/site2/pages/article/style_1.blade.php ENDPATH**/ ?>