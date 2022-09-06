<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(static_asset('site/css/plyr.css')); ?>" />
    <link rel="stylesheet" href="<?php echo e(static_asset('reaction/reaction.css')); ?>" />
    <link rel="stylesheet" href="<?php echo e(static_asset('reaction/reaction-2.css')); ?>" />
    <link rel="stylesheet" href="<?php echo e(static_asset('front-end/src/')); ?>" />
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="sg-page-content">
        <div class="container">
            <div class="entry-header mb-4">
                <div class="entry-thumbnail">
                    <?php if($post->layout == 'style_3'): ?>
                        <?php echo $__env->make('site2.pages.article.partials.detail_image', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php endif; ?>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6  col-lg-8 sg-sticky">
                    <div class="theiaStickySidebar post-details">
                        <div class="sg-section">
                            <div class="section-content">
                                <div class="sg-post">
                                    <?php if($post->layout =='default'): ?>
                                        <?php echo $__env->make('site2.pages.article.style_1', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php elseif($post->layout == 'style_2'): ?>
                                        <?php echo $__env->make('site2.pages.article.style_2', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php elseif($post->layout == 'style_3'): ?>
                                        <?php echo $__env->make('site2.pages.article.style_3', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php endif; ?>
                                </div>


                                <?php if($post->tags!=null): ?>
                                    <div class="sg-section mb-4">
                                        <div class="section-content">
                                            <div class="section-title">
                                                <h1><?php echo e(__('tags')); ?></h1>
                                            </div>

                                            <div class="tagcloud tagcloud-style-1">
                                                <?php if(!blank($tags = explode(',', $post->tags))): ?>
                                                    <?php $__currentLoopData = $tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <a href="<?php echo e(url('tags/'.$tag)); ?>"><?php echo e($tag); ?></a>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>


                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

    <input type="hidden" id="url" value="<?php echo e(url('/')); ?>">
    <input type="hidden" id="post_id" value="<?php echo e($post->id); ?>">

<?php $__env->stopSection(); ?>

<?php $__env->startSection('player'); ?>
    <script src="<?php echo e(static_asset('site/js')); ?>/plyr.js"></script>
    <script src="<?php echo e(static_asset('site/js')); ?>/plyr_ini.js"></script>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>

<script>

    $(".emoji-2").on("click", function () {
        var url = $('#url').val();

        $('[data-toggle="tooltip"]').tooltip();

        var formData = {
            data_reaction: $(this).attr("data-reaction"),
            id: $('#post_id').val()
        };

        // get section for student
        $.ajax({
            type: "GET",
            data: formData,
            dataType: 'json',
            url: url + '/' + 'post/reaction',
            success: function (data) {

                console.log(data['reactions']);
                console.log(data['is_you']);

                if(data['total'] == 0){

                    $('.like-details').html('Like');

                }else if(data['is_you'] != null){

                    var total = data['total'] - 1;

                    $('.like-details').html(' you and '+ total + ' others');

                }else{

                    $('.like-details').html(data['total']+ ' others');

                }

                console.log(data['is_you']);

                if(data['is_you'] == null || data['is_you']['data_reaction'] == 'Like'){
                    $('.like-emo span').removeAttr('class');
                    $('.like-emo span').attr('class', 'like-btn-like');
                }else if(data['is_you']['data_reaction'] == 'Love'){
                    $('.like-emo span').removeAttr('class');
                    $('.like-emo span').attr('class', 'like-btn-love');
                }else if(data['is_you']['data_reaction'] == 'HaHa'){
                    $('.like-emo span').removeAttr('class');
                    $('.like-emo span').attr('class', 'like-btn-haha');
                }else if(data['is_you']['data_reaction'] == 'Wow'){
                    $('.like-emo span').removeAttr('class');
                    $('.like-emo span').attr('class', 'like-btn-wow');
                }else if(data['is_you']['data_reaction'] == 'Sad'){
                    $('.like-emo span').removeAttr('class');
                    $('.like-emo span').attr('class', 'like-btn-sad');
                }else if(data['is_you']['data_reaction'] == 'Angry'){
                    $('.like-emo span').removeAttr('class');
                    $('.like-emo span').attr('class', 'like-btn-angry');
                }

                jQuery.each( data['reactions'], function( key, val ) {

                    if(key == "Like"){
                        $('.emo-like-2').attr('data-original-title', 'Like '+val);
                    }
                    if(key == "Love"){
                        $('.emo-love-2').attr('data-original-title', 'Love '+val);
                    }
                    if(key == "HaHa"){
                        $('.emo-haha-2').attr('data-original-title', 'HaHa '+val);
                    }
                    if(key == "Wow"){
                        $('.emo-wow-2').attr('data-original-title', 'Wow '+val);
                    }
                    if(key == "Sad"){
                        $('.emo-sad-2').attr('data-original-title', 'Sad '+val);
                    }
                    if(key == "Angry"){
                        $('.emo-angry-2').attr('data-original-title', 'Angry '+val);
                    }

                });


                var reactions = ['Like', 'Love', 'HaHa', 'Wow', 'Sad', 'Angry'];

                jQuery.each( reactions, function( key, val ) {

                    if (!data['reactions'].hasOwnProperty(val)) {
                        $('.emo-'+val.toLowerCase()+'-2').attr('data-original-title', val + ' 0');
                    }

                });

                $('[data-toggle="tooltip"]').tooltip();


            },
            error: function (data) {
            // console.log('Error:', data);
            }
        });
    });

        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
        });

</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('site2.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\temancms\resources\views/site2/pages/article_detail.blade.php ENDPATH**/ ?>