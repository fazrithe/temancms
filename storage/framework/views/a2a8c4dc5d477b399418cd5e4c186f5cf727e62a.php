 <!-- NAVBAR -->
 <nav class="navbar navbar-expand-lg sticky-top">
    <div class="container">
      <a class="navbar-brand" href="<?php echo e(route('home')); ?>"><img src="<?php echo e(static_asset('front-end/src/image/parabel-logo.svg')); ?>" height="48" alt="Logo" ></a>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <?php $__currentLoopData = $primaryMenu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mainMenu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if($mainMenu->is_mega_menu == 'no'): ?>
            <li class="nav-item">
                <a href="<?php echo e(menuUrl($mainMenu)); ?>" target="<?php echo e($mainMenu->new_teb == 1? '_blank':''); ?>"><?php echo e($mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label); ?> <?php if(!blank($mainMenu->children)): ?><span><i class="fa fa-angle-down nav-link" aria-hidden="true"></i></span><?php endif; ?> </a>
                
            </li>
            <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
        <!-- TOGGLE DARK MODE -->

        <div class="sg-search">
            <div class="search-form">
                
                <form class="d-flex" action="<?php echo e(route('article.search')); ?>" id="search" method="GET" role="search">
                  <input class="form-control me-2" type="search" placeholder="Cari berita" aria-label="Search" />
                  <button class="button-icon" type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                      <path
                        fill-rule="evenodd"
                        clip-rule="evenodd"
                        d="M6 2C3.79086 2 2 3.79086 2 6C2 8.20914 3.79086 10 6 10C8.20914 10 10 8.20914 10 6C10 3.79086 8.20914 2 6 2ZM0 6C0 2.68629 2.68629 0 6 0C9.31371 0 12 2.68629 12 6C12 7.29583 11.5892 8.49572 10.8907 9.47653L15.7071 14.2929C16.0976 14.6834 16.0976 15.3166 15.7071 15.7071C15.3166 16.0976 14.6834 16.0976 14.2929 15.7071L9.47653 10.8907C8.49572 11.5892 7.29583 12 6 12C2.68629 12 0 9.31371 0 6Z"
                        fill="#687980"
                      />
                    </svg>
                  </button>
                </form>
            </div>
        </div>
      </div>
      <!-- OFFCANVAS -->
      <button class="button-menu" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasResponsive" aria-controls="offcanvasResponsive"></button>
          <div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasResponsive" aria-labelledby="offcanvasResponsiveLabel">
            <div class="offcanvas-header">

              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasResponsive" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav">

                <?php $__currentLoopData = $primaryMenu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mainMenu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                    <?php if($mainMenu->is_mega_menu == 'no'): ?>
                        <li class="nav-item sg-dropdown mb-3">
                            <a href="<?php echo e(menuUrl($mainMenu)); ?>" target="<?php echo e($mainMenu->new_teb == 1? '_blank':''); ?>"><?php echo e($mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label); ?> <?php if(!blank($mainMenu->children)): ?><span><i class="fa fa-angle-down" aria-hidden="true"></i></span><?php endif; ?> </a>
                            <ul class="sg-dropdown-menu">
                                <?php $__currentLoopData = $mainMenu->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li class=""><a href="<?php echo e(menuUrl($child)); ?>" target="<?php echo e($child->new_teb == 1? '_blank':''); ?>"><?php echo e($child->label == 'gallery'? __('gallery'):$child->label); ?> <?php if(!blank($child->children)): ?> <span class="pull-right"><i class="fa fa-angle-right" aria-hidden="true"></i></span><?php endif; ?></a>
                                        <ul class="sg-dropdown-menu-menu">
                                            <?php $__currentLoopData = $child->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subChild): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li class=""><a href="<?php echo e(menuUrl($subChild)); ?>" target="<?php echo e($subChild->new_teb == 1? '_blank':''); ?>"><?php echo e($subChild->label == 'gallery'? __('gallery'):$subChild->label); ?></a></li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </li>
                    <?php endif; ?>

                    <?php if($mainMenu->is_mega_menu == 'tab'): ?>

                        <li class="sg-dropdown mega-dropdown">
                            <a href="<?php echo e(menuUrl($mainMenu) ? menuUrl($mainMenu) : "#"); ?>"><?php echo e($mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label); ?><span><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
                            <div class="sg-dropdown-menu mega-dropdown-menu">
                                <div class="mega-menu-content">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <ul class="nav nav-tabs" role="tablist">
                                                <?php $__currentLoopData = $mainMenu->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php $key = 0 ?>
                                                    <li class="nav-item">
                                                        <a class="nav-link <?php echo e($mainMenu->children[$key]->id == $child->id? 'active':''); ?>" id="<?php echo e($child->label); ?>-tab" data-toggle="tab" href="#<?php echo e($child->category->slug); ?>" role="tab" aria-controls="<?php echo e($child->label); ?>" aria-selected="<?php echo e($mainMenu->children[$key]->id == $child->id? 'true':'false'); ?>"><?php echo e($child->label == 'gallery'? __('gallery'):$child->label); ?></a>
                                                    </li>
                                                    <?php $key++ ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </ul>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="tab-content" id="myTabContent">
                                                <?php $__currentLoopData = $mainMenu->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <div class="tab-pane fade <?php echo e($mainMenu->children[0]->id == $child->id? 'show active':''); ?>" id="<?php echo e($child->category->slug); ?>" role="tabpanel" aria-labelledby="<?php echo e($child->label); ?>-tab">
                                                        <div class="row">
                                                            <?php $__currentLoopData = $child->postByCategory; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <div class="col-md-6 col-lg-3">
                                                                    <div class="sg-post">
                                                                        <div class="entry-header">
                                                                            <div class="entry-thumbnail">
                                                                                <a href="<?php echo e(route('article.detail', ['id' => $item->slug])); ?>">
                                                                                    <?php if(isFileExist(@$item->image, $result = @$item->image->medium_image_three)): ?>
                                                                                        <img class="img-fluid" src="<?php echo e(safari_check() ? basePath(@$item->image).'/'.$result : static_asset('default-image/default-240x160.png')); ?>" data-original="<?php echo e(basePath(@$item->image)); ?>/<?php echo e($result); ?>" alt="<?php echo $item->title; ?>">
                                                                                    <?php else: ?>
                                                                                        <img class="img-fluid" src="<?php echo e(static_asset('default-image/default-240x160.png')); ?>"  alt="<?php echo $item->title; ?>">
                                                                                    <?php endif; ?>
                                                                                </a>
                                                                            </div>
                                                                            <?php if($item->post_type=="video"): ?>
                                                                                <div class="video-icon block">
                                                                                    <img src="<?php echo e(static_asset('default-image/video-icon.svg')); ?> " alt="video-icon">
                                                                                </div>
                                                                            <?php elseif($item->post_type=="audio"): ?>
                                                                                <div class="video-icon block">
                                                                                    <img src="<?php echo e(static_asset('default-image/audio-icon.svg')); ?> " alt="audio-icon">
                                                                                </div>
                                                                            <?php endif; ?>
                                                                        </div>
                                                                        <div class="entry-content">
                                                                            <a href="<?php echo e(route('article.detail', ['id' => $item->slug])); ?>"><p><?php echo Str::limit( $item->title , 35); ?></p></a>
                                                                            <div class="entry-meta">
                                                                                <ul class="global-list">
                                                                                    <li><?php echo e(__('post_by')); ?> <a href="<?php echo e(route('site.author',['id' => $item->user->id])); ?>"><?php echo e($item->user->first_name); ?> </a> <a href="<?php echo e(route('article.date', date('Y-m-d', strtotime($item->updated_at)))); ?>"> <?php echo e(date('d F Y', strtotime($item->created_at))); ?></a></li>
                                                                                </ul>
                                                                            </div><!-- /.entry-meta -->
                                                                        </div><!-- /.entry-content -->
                                                                    </div><!-- /.sg-post -->
                                                                </div>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        </div><!-- /.row -->
                                                    </div><!-- /.tab-pane -->
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div><!-- /.tab-content -->
                                        </div>
                                    </div><!-- /.row -->
                                </div><!-- /.mega-menu-content -->
                            </div>
                        </li>
                    <?php endif; ?>

                    <?php if($mainMenu->is_mega_menu == 'category'): ?>
                        <li class="sg-dropdown mega-dropdown">
                            <a href="<?php echo e(menuUrl($mainMenu)); ?>" target="<?php echo e($mainMenu->new_teb == 1? '_blank':''); ?>"><?php echo e($mainMenu->label == 'gallery'? __('gallery'):$mainMenu->label); ?> <?php if(!blank($mainMenu->children)): ?><span><i class="fa fa-angle-down" aria-hidden="true"></i></span><?php endif; ?></a>
                            <div class="sg-dropdown-menu mega-dropdown-menu">
                                <div class="mega-menu-content">
                                    <div class="row">
                                        <?php $__currentLoopData = $mainMenu->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="col-md-3">
                                                <h3><?php echo e($child->label == 'gallery'? __('gallery'):$child->label); ?></h3>
                                                <ul class="global-list">
                                                    <?php $__currentLoopData = $child->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subChild): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <li><a href="<?php echo e(menuUrl($subChild)); ?>" target="<?php echo e($subChild->new_teb == 1? '_blank':''); ?>"><?php echo e($subChild->label == 'gallery'? __('gallery'):$subChild->label); ?></a></li>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </ul>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div><!-- /.row -->
                                </div><!-- /.mega-menu-content -->
                            </div>
                        </li>
                    <?php endif; ?>

                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>

              <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Cari berita" aria-label="Search" />
                <button class="button-icon" type="submit">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M6 2C3.79086 2 2 3.79086 2 6C2 8.20914 3.79086 10 6 10C8.20914 10 10 8.20914 10 6C10 3.79086 8.20914 2 6 2ZM0 6C0 2.68629 2.68629 0 6 0C9.31371 0 12 2.68629 12 6C12 7.29583 11.5892 8.49572 10.8907 9.47653L15.7071 14.2929C16.0976 14.6834 16.0976 15.3166 15.7071 15.7071C15.3166 16.0976 14.6834 16.0976 14.2929 15.7071L9.47653 10.8907C8.49572 11.5892 7.29583 12 6 12C2.68629 12 0 9.31371 0 6Z"
                      fill="#687980"
                    />
                  </svg>
                </button>
              </form>

            </div>
          </div>
      </button>
      <!-- OFFCANVAS -->
    </div>
  </nav>

<div class="container">
    <div class="row">
        <div class="col-12">
            <?php if(session('error')): ?>
                <div id="error_m" class="alert alert-danger">
                    <?php echo e(session('error')); ?>

                </div>
            <?php endif; ?>
            <?php if(session('success')): ?>
                <div id="success_m" class="alert alert-success">
                    <?php echo e(session('success')); ?>

                </div>
            <?php endif; ?>
            <?php if(isset($errors)): ?>
            <?php if($errors->any()): ?>
                <div class="alert alert-danger" id="error_m">
                    <ul>
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li><?php echo e($error); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                </div>
            <?php endif; ?>
            <?php endif; ?>
        </div>
    </div>
</div>

<?php echo $__env->make('site2.partials.ads', ['ads' => $headerWidgets], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php /**PATH C:\laragon\www\temancms\resources\views/site2/layouts/header/style_1.blade.php ENDPATH**/ ?>