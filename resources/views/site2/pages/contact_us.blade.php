@extends('site2.layouts.app')

@section('content')
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
				<strong>Email </strong>	
					<br>
					Redaksi: <strong>redaksi@tirto.id</strong> <br>

					Opini: <strong> opini@tirto.id</strong> <br>
					Magang <strong>karier@tirto.id
					</strong> <br>
					Iklan: <strong>sales@tirto.id</strong> 
		</div>
	</div>
</div>

@endsection

@section('script')
	@if(defaultModeCheck() == 'sg-dark')
		<script type="text/javascript">
		    jQuery(function($){
		        $('.g-recaptcha').attr('data-theme', 'dark');
		    });
		</script>
	@endif
@endsection
