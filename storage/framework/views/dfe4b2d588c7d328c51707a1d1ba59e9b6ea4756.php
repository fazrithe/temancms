<?php $__env->startSection('content'); ?>
<div class="container">
	<div class="row justify-content-center mt-5">
		<div class="col-lg-6" id="kontak">
			<h3>Kontak</h3>
			<p>Jalan Tanah Merdeka VII No.57 RT 004/RW 006, Rambutan, Ciracas, Jakarta Timur 13830.
				<p>
					<br>
					Redaksi: <strong>redaksi@parabel.id</strong> <br>
		</div>
	</div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
	<?php if(defaultModeCheck() == 'sg-dark'): ?>
		<script type="text/javascript">
		    jQuery(function($){
		        $('.g-recaptcha').attr('data-theme', 'dark');
		    });
		</script>
	<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('site2.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\temancms\resources\views/site2/pages/contact_us.blade.php ENDPATH**/ ?>