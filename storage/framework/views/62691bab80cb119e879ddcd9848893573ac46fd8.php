<div class="col-lg-4">
    <div class="footer-widget">
        <h3><?php echo e(data_get($detail, 'title')); ?></h3>
        <p><?php echo e(__('subscribe_description')); ?></p>
        <form action="<?php echo e(route('subscribe.newsletter')); ?>" class="tr-form" method="POST">
            <?php echo csrf_field(); ?>
            <label for="newss" class="d-none">Newsletter</label>
            <input name="email" id="newss" type="email" class="form-control" placeholder="<?php echo e(__('email_address')); ?>" required>
            <button type="submit" class="btn btn-primary"><?php echo e(__('subscribe')); ?></button>
        </form>
    </div>
</div>
<?php /**PATH C:\laragon\www\news\resources\views/site/widgets/footer/newsletter.blade.php ENDPATH**/ ?>