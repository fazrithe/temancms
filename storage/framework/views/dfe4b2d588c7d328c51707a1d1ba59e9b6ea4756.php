<?php $__env->startSection('content'); ?>
<div class="container">
	<div class="row justify-content-center mt-5">
		<div class="col-lg-6" id="kontak">
			<h3>Kontak</h3>
			<p>Jakarta:
				Jl. Madrasah No. 11A RT 08/RW 04, Cilandak Timur, Pasar Minggu, Jakarta Selatan, 12560
				Telepon: +62-21-27876956
				<br>
				<br>
				Yogyakarta:
				Jl. Candi Sambisari Juwangen No. 58 RT 01/RW 01, Kalasan, Sleman, Yogyakarta, 55571
				Telepon: +62-274-2851743
				</p>
				<br>
				<p>
				<strong class="mb-2">Email </strong>	
					<br>
					Redaksi: <strong>redaksi@tirto.id</strong> <br>

					Opini: <strong> opini@tirto.id</strong> <br>
					Magang <strong>karier@tirto.id
					</strong> <br>
					Iklan: <strong>sales@tirto.id</strong> 
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