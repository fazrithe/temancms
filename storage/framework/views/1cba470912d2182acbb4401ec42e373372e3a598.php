<div class="sg-widget">
    <h3 class="widget-title"><?php echo e(__('newsletter')); ?></h3>
    <div class="widget-newsletter text-center">
        <div class="icon">
            <i class="fa fa-envelope-o" aria-hidden="true"></i>
        </div>
        <p><?php echo e(__('newsletter_description')); ?></p>

        <form action="<?php echo e(route('subscribe.newsletter')); ?>" class="tr-form" method="POST">
            <?php echo csrf_field(); ?>
            <label for="news" class="d-none">Newsletter</label>
            <input name="email" id="news" type="email" class="form-control" placeholder="<?php echo e(__('email_address')); ?>" required>
            <button type="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i><span class="d-none"><?php echo e(__('email_address')); ?></span></button>
        </form>
    </div>
</div>
<?php /**PATH C:\laragon\www\temancmss\resources\views/site/widgets/newsletter.blade.php ENDPATH**/ ?>