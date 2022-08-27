<?php $__env->startSection('content'); ?>
<?php if(!blank($primarySectionPosts)): ?>
<?php echo $__env->make('site2.partials.home.primary_section', [
    'section' => $primarySection,
    'posts' => $primarySectionPosts,
    'sliderPosts' => $sliderPosts,
], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>

            <?php
                $language = LaravelLocalization::setLocale() ?? settingHelper('default_language')
            ?>
            <section id="list-reportase">
                <div class="container mt-3">
                    <div class="row">
                        <div class="col">
                            <span class="tags rounded-pill">Reportase</span>
                        </div>
                    </div>
                    <div class="theiaStickySidebar">
                        <?php echo $__env->make('site2.partials.home.category_section', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div>
            </section>
            <section id="list-serial">
                <div class="container mt-4">
                    <div class="row">
                        <div class="col">
                            <span class="tags rounded-pill">Serial</span>
                        </div>
                    </div>
                    <div class="theiaStickySidebar">
                        <?php echo $__env->make('site2.partials.home.category_section', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div>
            </section>
            <section id="list-ide-esai">
                <div class="container mt-4">
                    <div class="row">
                        <div class="col">
                            <span class="tags rounded-pill">Ide & Essai</span>
                        </div>
                    </div>
                    <div class="theiaStickySidebar">
                        <?php echo $__env->make('site2.partials.home.category_section_ide', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div>
            </section>
            </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('site2.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\temancms\resources\views/site2/pages/home.blade.php ENDPATH**/ ?>