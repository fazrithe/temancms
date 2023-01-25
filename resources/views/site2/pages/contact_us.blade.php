@extends('site2.layouts.app')

@section('content')
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
