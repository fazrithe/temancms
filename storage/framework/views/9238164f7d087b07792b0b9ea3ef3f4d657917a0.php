<?php $__env->startSection('post-aria-expanded'); ?>
    aria-expanded="true"
<?php $__env->stopSection(); ?>
<?php $__env->startSection('post-show'); ?>
    show
<?php $__env->stopSection(); ?>
<?php $__env->startSection('post'); ?>
    active
<?php $__env->stopSection(); ?>
<?php $__env->startSection('create_personality_quiz'); ?>
    active
<?php $__env->stopSection(); ?>
<?php $__env->startSection('modal'); ?>
    <?php echo $__env->make('gallery::image-gallery', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('gallery::video-gallery', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    
<?php $__env->stopSection(); ?>


<?php $__env->startSection('content'); ?>

    <div class="dashboard-ecommerce">
        <div class="container-fluid dashboard-content ">
            <!-- page info start-->
            <?php echo Form::open(['route' => ['save-new-quiz','personality-quiz'],'method' => 'post','enctype'=>'multipart/form-data']); ?>

            <input type="hidden" id="images" value="<?php echo e($countImage); ?>">
            <input type="hidden" id="videos" value="<?php echo e($countVideo); ?>">
            <input type="hidden" id="imageCount" value="1" class="imageCount">
            <input type="hidden" id="videoCount" value="1">
            <div class="row clearfix">
                <div class="col-12">
                    <div class="add-new-header clearfix m-b-20">
                        <div class="row">
                            <div class="col-6">
                                <div class="block-header">
                                    <h2><?php echo e(__('add_post')); ?></h2>
                                </div>
                            </div>
                            <div class="col-6 text-right">
                                <a href="<?php echo e(route('post')); ?>" class="btn btn-primary btn-add-new"><i
                                        class="fas fa-list"></i> <?php echo e(__('posts')); ?>

                                </a>
                            </div>
                        </div>
                    </div>
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
                            <?php if($errors->any()): ?>
                                <div class="alert alert-danger">
                                    <ul>
                                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li><?php echo e($error); ?></li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </div>
                            <?php endif; ?>
                        </div>

                        <!-- Main Content section start -->
                        <div class="col-12 col-lg-9">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2><?php echo e(__('posts_details')); ?></h2>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post_title" class="col-form-label"><?php echo e(__('title')); ?>*</label>
                                        <input id="post_title" onkeyup="metaTitleSet()" name="title"
                                               value="" type="text" class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post-slug" class="col-form-label"><b><?php echo e(__('slug')); ?></b>
                                            (<?php echo e(__('slug_message')); ?>)</label>
                                        <input id="post-slug" name="slug" value="" type="text"
                                               class="form-control">
                                    </div>
                                </div>
                                <!-- tinemcey start -->
                                <div class="row p-l-15">
                                    <div class="col-12">
                                        <label for="post_content" class="col-form-label"><?php echo e(__('content')); ?>*</label>
                                        <textarea name="content" value="<?php echo e(old('content')); ?>" id="post_content"
                                                  cols="30" rows="5"></textarea>
                                    </div>
                                </div>
                            </div>

                            
                            <h3 class="block-header"><?php echo e(__('results')); ?> </h3>
                            <div class="content-area">
                                <div class="clearfix"></div>
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div id="quiz_result_container" class="quiz_result_container">

                                        <?php $result_unique_id = uniqid() ?>
                                        <div id="panel_quiz_result_<?php echo e($result_unique_id); ?>"
                                             class="panel panel-default panel-quiz-result"
                                             data-result-id="<?php echo e($result_unique_id); ?>">
                                            <div class="panel panel-default mt-2 bg-white">
                                                <div class="panel-heading" role="tab" id="heading_"<?php echo e($result_unique_id); ?>>
                                                    <h4 class="panel-title d-flex">
                                                        <a role="button" data-toggle="collapse" data-parent="#accordion"
                                                           href="#collapse_<?php echo e($result_unique_id); ?>" aria-expanded="true"
                                                           aria-controls="collapse_<?php echo e($result_unique_id); ?>">
                                                            #<span id="result_number_<?php echo e($result_unique_id); ?>">1</span> <span id="result_<?php echo e($result_unique_id); ?>"></span>
                                                        </a>
                                                        <div class="text-right">
                                                            <button type="button" class="btn btn-default"
                                                                    onclick="delete_quiz_result('<?php echo e($result_unique_id); ?>')">
                                                                <i class="fa fa-trash"></i></button>
                                                        </div>
                                                    </h4>
                                                </div>
                                                <div id="collapse_<?php echo e($result_unique_id); ?>"
                                                     class="panel-collapse in collapse show"
                                                     role="tabpanel" aria-labelledby="heading_<?php echo e($result_unique_id); ?>"
                                                     style="">
                                                    <div class="panel-body bg-white">

                                                        <div class="col-12 col-lg-12">
                                                            <div class="col-sm-12 pr-0">
                                                                <div class="form-group">
                                                                    <label
                                                                        for="result_input"><b><?php echo e(__('result')); ?></b></label>
                                                                    <input type="text" id="result_input" required
                                                                           class="form-control input-result-text"
                                                                           data-result-id="<?php echo e($result_unique_id); ?>"
                                                                           data-is-update="0"
                                                                           name="result_title[]"
                                                                           placeholder="<?php echo e(__('result')); ?>" value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-lg-12">
                                                            <div class="row">
                                                                <div class="col-sm-3 ">
                                                                    <div class="result-image">
                                                                        <div class="form-group">
                                                                            <!-- Large modal -->
                                                                            <button type="button" id="btn_image_modal"
                                                                                    class="btn btn-primary btn-image-modal ml-3"
                                                                                    data-id="1" data-toggle="modal" data-result-id="<?php echo e($result_unique_id); ?>"
                                                                                    data-target=".image-modal-lg"><?php echo e(__('add_image')); ?></button>
                                                                            <input id="image_id_result_<?php echo e($result_unique_id); ?>" name="result_image[]"
                                                                                   type="hidden"
                                                                                   class="form-control image_id">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <div class="form-group text-center">
                                                                                <img
                                                                                    src="<?php echo e(static_asset('default-image/default-100x100.png')); ?> "
                                                                                    id="image_preview_result_<?php echo e($result_unique_id); ?>"
                                                                                    width="200" height="200" alt="image"
                                                                                    class="img-responsive img-thumbnail image_preview">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-9">
                                                                    <div class="form-group">
                                                                        <label for="result_content"
                                                                               class="col-form-label pt-0"><?php echo e(__('content')); ?>

                                                                            </label>
                                                                        <textarea name="result_content[]"
                                                                                  class="result-content"
                                                                                  id="result_content"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row m-3">
                                        <div class="col-sm-12 text-center">
                                            <button type="button" id="btn_add_quiz_result"
                                                    data-result-number="1" class="btn btn-md btn-primary btn-add-post-item"><i
                                                    class="fa fa-plus"></i><?php echo e(__('add_result')); ?></button>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            

                            
                            <h3 class="block-header"><?php echo e(__('questions')); ?> </h3>
                            <div class="content-area">
                                <div class="clearfix"></div>
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div id="quiz_questions_container" class="quiz_questions_container">

                                        <?php $unique_id = uniqid() ?>
                                        <div id="panel_quiz_question_<?php echo e($unique_id); ?>"
                                             class="panel panel-default panel-quiz-question"
                                             data-question-id="<?php echo e($unique_id); ?>" data-quiz-type="trivia-quiz">
                                            <div class="panel panel-default mt-2 bg-white">
                                                <div class="panel-heading" role="tab" id="headingOne">
                                                    <h4 class="panel-title d-flex">
                                                        <a role="button" data-toggle="collapse" data-parent="#accordion"
                                                           href="#collapse_<?php echo e($unique_id); ?>" aria-expanded="true"
                                                           aria-controls="collapse_<?php echo e($unique_id); ?>">
                                                            #<span id="question_number_<?php echo e($unique_id); ?>">1</span> <span id="question_<?php echo e($unique_id); ?>"></span>
                                                        </a>
                                                        <div class="text-right">
                                                            <button type="button" class="btn btn-default"
                                                                    onclick="delete_quiz_question('<?php echo e($unique_id); ?>')">
                                                                <i class="fa fa-trash"></i></button>
                                                        </div>
                                                    </h4>
                                                </div>
                                                <div id="collapse_<?php echo e($unique_id); ?>"
                                                     class="panel-collapse in collapse show"
                                                     role="tabpanel" aria-labelledby="heading_<?php echo e($unique_id); ?>"
                                                     style="">
                                                    <div class="panel-body bg-white">

                                                        <div class="col-12 col-lg-12">
                                                            <div class="col-sm-12 pr-0">
                                                                <div class="form-group">
                                                                    <label
                                                                        for="question"><b><?php echo e(__('question')); ?></b></label>
                                                                    <input name="question_id[]" type="hidden" value="<?php echo e($unique_id); ?>">
                                                                    <input type="text" id="question_input" required
                                                                           class="form-control input-question-text"
                                                                           data-question-id="<?php echo e($unique_id); ?>"
                                                                           name="question_title[]"
                                                                           placeholder="<?php echo e(__('question')); ?>" value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-lg-12">
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <div class="question-image">
                                                                        <div class="form-group">
                                                                            <!-- Large modal -->
                                                                            <button type="button" id="btn_image_modal"
                                                                                    class="btn btn-primary btn-image-modal ml-3"
                                                                                    data-id="1" data-toggle="modal" data-question-id="<?php echo e($unique_id); ?>"
                                                                                    data-target=".image-modal-lg"><?php echo e(__('add_image')); ?></button>
                                                                            <input id="image_id_question_<?php echo e($unique_id); ?>" name="question_image[]"
                                                                                   type="hidden"
                                                                                   class="form-control image_id">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <div class="form-group text-center">
                                                                                <img
                                                                                    src="<?php echo e(static_asset('default-image/default-100x100.png')); ?> "
                                                                                    id="image_preview_question_<?php echo e($unique_id); ?>"
                                                                                    width="200" height="200" alt="image"
                                                                                    class="img-responsive img-thumbnail image_preview">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-9">
                                                                    <div class="form-group">
                                                                        <label for="question_content"
                                                                               class="col-form-label pt-0"><?php echo e(__('content')); ?>

                                                                        </label>
                                                                        <textarea name="question_content[]"
                                                                                  class="question-content"
                                                                                  id="question_content"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-12">
                                                                    <div class="row">
                                                                        <div class="col-sm-12 m-b-15">
                                                                            <label
                                                                                class="control-label"><?php echo e(__('answers')); ?></label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="quiz-answers">
                                                                        <div class="row">
                                                                            <div
                                                                                class="col-sm-12 btn-group-answer-formats-container">
                                                                                <input type="hidden" required
                                                                                       name="answer_format[]"
                                                                                       id="input_answer_format_<?php echo e($unique_id); ?>"
                                                                                       value="small_image">
                                                                                <span
                                                                                    class="span-answer-format"><?php echo e(__('answer_format')); ?></span>
                                                                                <div
                                                                                    class="btn-group btn-group-answer-formats"
                                                                                    role="group">
                                                                                    <button type="button"
                                                                                            class="btn btn-default active btn_<?php echo e($unique_id); ?>"
                                                                                            data-answer-format="small_image"
                                                                                            data-question-id="<?php echo e($unique_id); ?>">
                                                                                        <i class="fa fa-th"></i>
                                                                                    </button>
                                                                                    <button type="button"
                                                                                            class="btn btn-default btn_<?php echo e($unique_id); ?>"
                                                                                            data-answer-format="large_image"
                                                                                            data-question-id="<?php echo e($unique_id); ?>">
                                                                                        <i class="fa fa-th-large"></i>
                                                                                    </button>
                                                                                    <button type="button"
                                                                                            class="btn btn-default btn_<?php echo e($unique_id); ?>"
                                                                                            data-answer-format="text"
                                                                                            data-question-id="<?php echo e($unique_id); ?>">
                                                                                        <i class="fa fa-th-list"></i>
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div
                                                                            id="quiz_answers_container_question_<?php echo e($unique_id); ?>"
                                                                            class="row row-answer">
                                                                            <?php $answer_unique_id = uniqid() ?>
                                                                            <div
                                                                                id="quiz_answer_<?php echo e($answer_unique_id); ?>"
                                                                                class="answer">
                                                                                <div class="answer-inner">
                                                                                    <a href="javascript:void(0)"
                                                                                       class="btn-delete-answer"
                                                                                       onclick="delete_quiz_answer('<?php echo e($answer_unique_id); ?>')"><i
                                                                                            class="fa fa-times"></i></a>
                                                                                    <div
                                                                                        class="form-group quiz-answer-image-item-text m-b-0">
                                                                                        <input type="hidden"
                                                                                               name="answer_unique_id_question_<?php echo e($unique_id); ?>[]"
                                                                                               value="<?php echo e($answer_unique_id); ?>">
                                                                                        <div
                                                                                            id="quiz_answer_image_container_answer_<?php echo e($answer_unique_id); ?>"
                                                                                            class="quiz-answer-image-item">
                                                                                            <div
                                                                                                class="quiz-answer-image-container" data-question-id="<?php echo e($unique_id); ?>"
                                                                                                data-answer-id="<?php echo e($answer_unique_id); ?>">
                                                                                                <input type="hidden"
                                                                                                       name="answer_image_question_<?php echo e($unique_id); ?>[]"
                                                                                                       value="" class="image_id">
                                                                                                <a class="btn-select-image btn-image-modal"
                                                                                                   id="btn_image_modal"
                                                                                                   data-toggle="modal"
                                                                                                   data-target=".image-modal-lg"
                                                                                                   data-id="1"
                                                                                                   data-quiz-image-type="answer"
                                                                                                   data-question-id="<?php echo e($unique_id); ?>"
                                                                                                   data-answer-id="<?php echo e($answer_unique_id); ?>">
                                                                                                    <div
                                                                                                        class="btn-select-image-inner">
                                                                                                        <i class="icon-images fa fa-picture-o"></i>
                                                                                                        <button
                                                                                                            class="btn"><?php echo e(__('select_image')); ?></button>
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <textarea required
                                                                                            name="answer_text_question_<?php echo e($unique_id); ?>[]"
                                                                                            class="form-control answer-text"
                                                                                            placeholder="<?php echo e(__('answer_text')); ?>"></textarea>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <div class="result-select px-1">
                                                                                            <select name="selected_result_question_answer_<?php echo e($answer_unique_id); ?>" required class="form-control personality-quiz-result-dropdown rounded">
                                                                                                <option><?php echo e(__('select_a_result')); ?></option>
                                                                                                <option value="1">1.</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                            <?php $answer_unique_id = uniqid() ?>
                                                                            <div
                                                                                id="quiz_answer_<?php echo e($answer_unique_id); ?>"
                                                                                class="answer">
                                                                                <div class="answer-inner">
                                                                                    <a href="javascript:void(0)"
                                                                                       class="btn-delete-answer"
                                                                                       onclick="delete_quiz_answer('<?php echo e($answer_unique_id); ?>')"><i
                                                                                            class="fa fa-times"></i></a>
                                                                                    <div
                                                                                        class="form-group quiz-answer-image-item-text m-b-0">
                                                                                        <input type="hidden"
                                                                                               name="answer_unique_id_question_<?php echo e($unique_id); ?>[]"
                                                                                               value="<?php echo e($answer_unique_id); ?>">
                                                                                        <div
                                                                                            id="quiz_answer_image_container_answer_<?php echo e($answer_unique_id); ?>"
                                                                                            class="quiz-answer-image-item">
                                                                                            <div
                                                                                                class="quiz-answer-image-container" data-question-id="<?php echo e($unique_id); ?>"
                                                                                                data-answer-id="<?php echo e($answer_unique_id); ?>">
                                                                                                <input type="hidden"
                                                                                                       name="answer_image_question_<?php echo e($unique_id); ?>[]"
                                                                                                       value="" class="image_id">
                                                                                                <a class="btn-select-image btn-image-modal"
                                                                                                   id="btn_image_modal"
                                                                                                   data-toggle="modal"
                                                                                                   data-target=".image-modal-lg"
                                                                                                   data-id="1"
                                                                                                   data-quiz-image-type="answer"
                                                                                                   data-question-id="<?php echo e($unique_id); ?>"
                                                                                                   data-answer-id="<?php echo e($answer_unique_id); ?>">
                                                                                                    <div
                                                                                                        class="btn-select-image-inner">
                                                                                                        <i class="icon-images fa fa-picture-o"></i>
                                                                                                        <button
                                                                                                            class="btn"><?php echo e(__('select_image')); ?></button>
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <textarea required
                                                                                            name="answer_text_question_<?php echo e($unique_id); ?>[]"
                                                                                            class="form-control answer-text"
                                                                                            placeholder="<?php echo e(__('answer_text')); ?>"></textarea>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <div class="result-select px-1">
                                                                                            <select name="selected_result_question_answer_<?php echo e($answer_unique_id); ?>" required class="form-control personality-quiz-result-dropdown rounded">
                                                                                                <option><?php echo e(__('select_a_result')); ?></option>
                                                                                                <option value="1">1.</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                            <?php $answer_unique_id = uniqid() ?>
                                                                            <div
                                                                                id="quiz_answer_<?php echo e($answer_unique_id); ?>"
                                                                                class="answer">
                                                                                <div class="answer-inner">
                                                                                    <a href="javascript:void(0)"
                                                                                       class="btn-delete-answer"
                                                                                       onclick="delete_quiz_answer('<?php echo e($answer_unique_id); ?>')"><i
                                                                                            class="fa fa-times"></i></a>
                                                                                    <div
                                                                                        class="form-group quiz-answer-image-item-text m-b-0">
                                                                                        <input type="hidden"
                                                                                               name="answer_unique_id_question_<?php echo e($unique_id); ?>[]"
                                                                                               value="<?php echo e($answer_unique_id); ?>">
                                                                                        <div
                                                                                            id="quiz_answer_image_container_answer_<?php echo e($answer_unique_id); ?>"
                                                                                            class="quiz-answer-image-item">
                                                                                            <div
                                                                                                class="quiz-answer-image-container" data-question-id="<?php echo e($unique_id); ?>"
                                                                                                data-answer-id="<?php echo e($answer_unique_id); ?>">
                                                                                                <input type="hidden"
                                                                                                       name="answer_image_question_<?php echo e($unique_id); ?>[]"
                                                                                                       value="" class="image_id">
                                                                                                <a class="btn-select-image btn-image-modal"
                                                                                                   id="btn_image_modal"
                                                                                                   data-toggle="modal"
                                                                                                   data-target=".image-modal-lg"
                                                                                                   data-id="1"
                                                                                                   data-quiz-image-type="answer"
                                                                                                   data-question-id="<?php echo e($unique_id); ?>"
                                                                                                   data-answer-id="<?php echo e($answer_unique_id); ?>">
                                                                                                    <div
                                                                                                        class="btn-select-image-inner">
                                                                                                        <i class="icon-images fa fa-picture-o"></i>
                                                                                                        <button
                                                                                                            class="btn"><?php echo e(__('select_image')); ?></button>
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <textarea required
                                                                                            name="answer_text_question_<?php echo e($unique_id); ?>[]"
                                                                                            class="form-control answer-text"
                                                                                            placeholder="<?php echo e(__('answer_text')); ?>"></textarea>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <div class="result-select px-1">
                                                                                            <select name="selected_result_question_answer_<?php echo e($answer_unique_id); ?>" required class="form-control personality-quiz-result-dropdown rounded">
                                                                                                <option><?php echo e(__('select_a_result')); ?></option>
                                                                                                <option value="1">1.</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-sm-12 text-center">
                                                                                <button type="button"
                                                                                        id="btn_add_quiz_answer"
                                                                                        class="btn-add-quiz-answer btn btn-add-answer"
                                                                                        data-question-id="<?php echo e($unique_id); ?>"
                                                                                        data-question-type="personality_quiz">
                                                                                    <i
                                                                                        class="fa fa-plus"></i><?php echo e(__('add_answer')); ?>

                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row m-3">
                                        <div class="col-sm-12 text-center">
                                            <button type="button" id="btn_add_quiz_question"
                                                    data-question-number="1" class="btn btn-md btn-primary btn-add-post-item"><i
                                                    class="fa fa-plus"></i><?php echo e(__('add_question')); ?></button>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            

                            <!-- SEO section start -->
                            <div class="add-new-page  bg-white p-20 m-b-20" id="post_meta">
                                <div class="block-header">
                                    <h2><?php echo e(__('seo_details')); ?></h2>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="meta_title"><b><?php echo e(__('title')); ?></b> (<?php echo e(__('meta_title')); ?>)</label>
                                        <input id="meta_title" class="form-control meta" value="" data-type="title"
                                               name="meta_title">
                                        <p class="display-nothing alert alert-danger mt-2" role="alert">
                                            <?php echo e(__('current_characters')); ?>: <span class="characters"></span>, <?php echo e(__('meta_title').' '. __('should_bd') .' '. __('in_between') .' '. '30-60 ' . __('characters')); ?>

                                        </p>
                                        <p class="display-nothing alert alert-success mt-2" role="alert">
                                            <?php echo e(__('current_characters')); ?>: <span class="characters"></span>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post-keywords" class="col-form-label"><b><?php echo e(__('keywords')); ?></b>
                                        </label>
                                        <input id="post-keywords" name="meta_keywords"
                                               value="" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post_tags" class="col-form-label"><?php echo e(__('tags')); ?>

                                            (<?php echo e(__('meta_tags')); ?>)</label>
                                        <input id="post_tags" name="tags" type="text" value="<?php echo e(old('tags')); ?>"
                                               data-role="tagsinput" class="form-control"/>

                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post_desc">
                                            <b><?php echo e(__('description')); ?></b> (<?php echo e(__('meta_description')); ?>)
                                        </label>
                                        <textarea class="form-control meta" id="meta_description"
                                                  value="" name="meta_description" data-type="description"
                                                  rows="3"></textarea>
                                        <p class="display-nothing alert alert-danger mt-2" role="alert">
                                            <?php echo e(__('current_characters')); ?>: <span class="characters"></span>, <?php echo e(__('meta_description').' '. __('should_bd') .' '. __('in_between') .' '. '50-160 ' . __('characters')); ?>

                                        </p>
                                        <p class="display-nothing alert alert-success mt-2" role="alert">
                                            <?php echo e(__('current_characters')); ?>: <span class="characters"></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- SEO section end -->
                            <!-- visibility section start -->
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2><?php echo e(__('visibility')); ?></h2>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-12 col-md-4">
                                        <div class="form-title">
                                            <label for="visibility"><?php echo e(__('visibility')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-3 col-md-2">
                                        <label class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="visibility" id="visibility_show" checked value="1"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"><?php echo e(__('show')); ?></span>
                                        </label>
                                    </div>
                                    <div class="col-3 col-md-2">
                                        <label class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" name="visibility" id="visibility_hide" value="0"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"><?php echo e(__('hide')); ?></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="featured_post"><?php echo e(__('add_to_featured')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="featured_post" name="featured"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="add_to_breaking"><?php echo e(__('add_to_breaking')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="add_to_breaking" name="breaking"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="add_to_slide"><?php echo e(__('add_to_slider')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="add_to_slide" name="slider"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="recommended"><?php echo e(__('add_to_recommended')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="recommended" name="recommended"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label for="editor_picks"><?php echo e(__('add_to_editor_picks')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="editor_picks" name="editor_picks"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="row p-l-15">
                                    <div class="col-8 col-md-4">
                                        <div class="form-title">
                                            <label
                                                for="auth_required"><?php echo e(__('show_only_to_authenticate_users')); ?></label>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-2">
                                        <label class="custom-control custom-checkbox">
                                            <input type="checkbox" id="auth_required" name="auth_required"
                                                   class="custom-control-input">
                                            <span class="custom-control-label"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- visibility section end -->

                        </div>
                        <!-- Main Content section end -->

                        <!-- right sidebar start -->
                        <div class="col-12 col-lg-3">
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2><?php echo e(__('image')); ?></h2>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <!-- Large modal -->
                                        <button type="button" id="btn_image_modal"
                                                class="btn btn-primary btn-image-modal" data-id="1" data-toggle="modal"
                                                data-target=".image-modal-lg"><?php echo e(__('add_image')); ?></button>
                                        <input id="image_id" name="image_id" type="hidden"
                                               class="form-control image_id">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-group text-center">
                                            <img src="<?php echo e(static_asset('default-image/default-100x100.png')); ?> "
                                                 id="image_preview"
                                                 width="200" height="200" alt="image"
                                                 class="img-responsive img-thumbnail image_preview">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="post_language"><?php echo e(__('select_language')); ?>*</label>
                                        <select class="form-control dynamic-category" id="post_language" name="language"
                                                data-dependent="category_id" required>
                                            <?php $__currentLoopData = $activeLang; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option
                                                    <?php if(App::getLocale()==$lang->code): ?> Selected
                                                    <?php endif; ?> value="<?php echo e($lang->code); ?>"><?php echo e($lang->name); ?>

                                                </option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="category_id"><?php echo e(__('category')); ?> *</label>
                                        

                                        <select class="form-control dynamic" id="category_id" name="category_id"
                                                data-dependent="sub_category_id" required>
                                            <option value=""><?php echo e(__('select_category')); ?></option>
                                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option
                                                    value="<?php echo e($category->id); ?>"><?php echo e($category->category_name); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="sub_category_id"><?php echo e(__('sub_category')); ?></label>
                                        <select class="form-control dynamic" id="sub_category_id"
                                                name="sub_category_id">
                                            <option value=""><?php echo e(__('select_sub_category')); ?></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="col-md-12">
                                    <div class="block-header">
                                        <h2><?php echo e(__('article_detail')); ?></h2>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="custom-control custom-radio detail-control-inline">
                                                <input type="radio" name="layout" id="detail_style_1" value="default"
                                                       checked class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="<?php echo e(static_asset('default-image/Detail/detail_1.png')); ?>" alt=""
                                                 class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="custom-control custom-radio detail-control-inline">
                                                <input type="radio" name="layout" id="detail_style_2" value="style_2"
                                                       class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="<?php echo e(static_asset('default-image/Detail/detail_2.png')); ?>" alt=""
                                                 class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="custom-control custom-radio detail-control-inline">
                                                <input type="radio" name="layout" id="detail_style_3" value="style_3"
                                                       class="custom-control-input">
                                                <span class="custom-control-label"></span>
                                            </label>
                                            <img src="<?php echo e(static_asset('default-image/Detail/detail_3.png')); ?>" alt=""
                                                 class="img-responsive cat-block-img">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="add-new-page  bg-white p-20 m-b-20">
                                <div class="block-header">
                                    <h2><?php echo e(__('publish')); ?>*</h2>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <select class="form-control" id="post_status" name="status" required>
                                            <option value="1"><?php echo e(__('published')); ?></option>
                                            <option value="0"><?php echo e(__('draft')); ?></option>
                                            <option value="2"><?php echo e(__('scheduled')); ?></option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-sm-12 divScheduleDate">
                                    <label for="scheduled_date"><?php echo e(__('schedule_date')); ?></label>
                                    <div class="input-group">
                                        <label class="input-group-text" for="scheduled_date"><i
                                                class="fa fa-calendar-alt"></i></label>
                                        <input type="text" class="form-control date" id="scheduled_date"
                                               name="scheduled_date"/>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label class="custom-control" for="btnSubmit"></label>
                                        <button type="submit" name="btnSubmit" class="btn btn-primary pull-right"><i
                                                class="m-r-10 mdi mdi-plus"></i><?php echo e(__('create_post')); ?></button>
                                        <label class="" for="btnSubmit"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- right sidebar end -->
                    </div>
                </div>
            </div>
        <?php echo Form::close(); ?>

        <!-- page info end-->
        </div>
    </div>


    <input type="hidden" value="0" id="content_number">

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

    <script>
        $(document).ready(function () {

            $('.dynamic-category').change(function () {
                if ($(this).val() != '') {
                    var select = $(this).attr("id");
                    var value = $(this).val();
                    var dependent = $(this).data('dependent');
                    var _token = "<?php echo e(csrf_token()); ?>";
                    $.ajax({
                        url: "<?php echo e(route('category-fetch')); ?>",
                        method: "POST",
                        data: {select: select, value: value, _token: _token},
                        success: function (result) {
                            $('#' + dependent).html(result);
                        }

                    })
                }
            });

            $('#post_language').change(function () {
                $('#category_id').val('');
                $('#sub_category_id').val('');
            });

            $('.dynamic').change(function () {
                if ($(this).val() != '') {
                    var select = $(this).attr("id");
                    var value = $(this).val();
                    var dependent = $(this).data('dependent');
                    var _token = "<?php echo e(csrf_token()); ?>";
                    $.ajax({
                        url: "<?php echo e(route('subcategory-fetch')); ?>",
                        method: "POST",
                        data: {select: select, value: value, _token: _token},
                        success: function (result) {
                            $('#' + dependent).html(result);
                        }

                    })
                }
            });


            $('#category').change(function () {
                $('#sub_category_id').val('');
            });
        });
    </script>
    <script type="text/javascript" src="<?php echo e(static_asset('js/post.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(static_asset('js/tagsinput.js')); ?>"></script>
    <script>
        addContent = function (value) {

            var content_number = $("#content_number").val();
            content_number++;

            $.ajax({
                url: "<?php echo e(route('add-content')); ?>",
                method: "GET",
                data: {value: value, content_count: content_number},
                success: function (result) {
                    $('.content-area').append(result);
                    $("#content_number").val(content_number);

                    // auto scrolling to newly added element
                    var newlyAdded = 'content_' + content_number;
                    $('body, html').animate({scrollTop: $('.' + newlyAdded).offset().top}, 1000);

                }

            });
        }

        $(document).on("click", ".add-new-page .row_remove", function () {
            let element = $(this).parents('.add-new-page');
            //element.remove(1000);
            element.hide("slow", function () {
                $(this).remove();
            })
        });
    </script>

    <script>
        $(document).ready(function () {

            tinymce.init({
                selector: "textarea#question_content",
                theme: "modern",
                height: 130,
                plugins: [
                    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                    'searchreplace wordcount visualblocks visualchars code fullscreen',
                    'insertdatetime media nonbreaking save table contextmenu directionality',
                    'emoticons template paste textcolor colorpicker textpattern imagetools'
                ],
                toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
                image_advtab: true
            });

            tinymce.init({
                selector: "textarea#result_content",
                theme: "modern",
                height: 130,
                plugins: [
                    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                    'searchreplace wordcount visualblocks visualchars code fullscreen',
                    'insertdatetime media nonbreaking save table contextmenu directionality',
                    'emoticons template paste textcolor colorpicker textpattern imagetools'
                ],
                toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
                image_advtab: true
            });

            $(".toggle-accordion").on("click", function () {
                var accordionId = $(this).attr("accordion-id"),
                    numPanelOpen = $(accordionId + ' .collapse.in').length;

                $(this).toggleClass("active");

                if (numPanelOpen == 0) {
                    openAllPanels(accordionId);
                } else {
                    closeAllPanels(accordionId);
                }
            })

            openAllPanels = function (aId) {
                console.log("setAllPanelOpen");
                $(aId + ' .panel-collapse:not(".in")').collapse('show');
            }
            closeAllPanels = function (aId) {
                console.log("setAllPanelclose");
                $(aId + ' .panel-collapse.in').collapse('hide');
            }

        });
    </script>

    
    <script>
        $(document).on("click", "#btn_add_quiz_question", function (event) {

            event.preventDefault();
            var post_type = 'personality_quiz';

            // var question_number = $('#question_number_'+unique_id).text();

            var question_number = parseInt($(this).attr('data-question-number'));

            var update = question_number + 1;

            $('#btn_add_quiz_question').attr('data-question-number',update);


            console.log(question_number);

            $.ajax({
                url: "<?php echo e(route('add-trivia-quiz-question')); ?>",
                method: "GET",
                data: {post_type: post_type, question_number: question_number},
                success: function (result) {
                    result_dropdowns();
                    $('#quiz_questions_container').append(result);
                }
            });
        });
    </script>

    
    <script>
        $(document).on("click", "#btn_add_quiz_result", function (event) {

            event.preventDefault();
            var post_type = 'personality_quiz';

            // var question_number = $('#question_number_'+unique_id).text();

            var result_number = parseInt($(this).attr('data-result-number'));

            var update = result_number + 1;

            $('#btn_add_quiz_result').attr('data-result-number',update);


            console.log(result_number);

            $.ajax({
                url: "<?php echo e(route('add-trivia-quiz-result')); ?>",
                method: "GET",
                data: {post_type: post_type, result_number: result_number},
                success: function (result) {
                    $('#quiz_result_container').append(result);
                }
            });
        });
    </script>
    
    <script>
        $(document).on("click", ".btn-add-quiz-answer", function (event) {
            event.preventDefault();

            var question_id = $(this).attr('data-question-id');
            var post_type = $(this).attr('data-question-type');

            console.log(post_type);

            $.ajax({
                url: "<?php echo e(route('add-trivia-quiz-answer')); ?>",
                method: "GET",
                data: {post_type: post_type, question_id: question_id},
                success: function (result) {
                    $('#quiz_answers_container_question_' + question_id).append(result);
                }
            });
        });
    </script>

    <script>
        //delete quiz question
        function delete_quiz_question(question_id) {
            swal({
                title: "<?php echo e(__('are_you_sure?')); ?>",
                text: "<?php echo e(__('it_will_be_deleted_permanently')); ?>",
                icon: "warning",
                buttons: true,
                buttons: ["<?php echo e(__('cancel')); ?>", "<?php echo e(__('delete')); ?>"],
                dangerMode: true,
                closeOnClickOutside: false
            }).then(function (willDelete) {
                if (willDelete) {
                    $('#panel_quiz_question_' + question_id).remove();
                    swal.stopLoading();
                    swal({
                        title: "<?php echo e(__('deleted')); ?>!",
                        text: "<?php echo e(__('deleted_successfully')); ?>",
                        icon: "success",
                    })
                }
            });
        }

        //delete quiz answer
        function delete_quiz_answer(answer_id) {
            swal({
                title: "<?php echo e(__('are_you_sure?')); ?>",
                text: "<?php echo e(__('it_will_be_deleted_permanently')); ?>",
                icon: "warning",
                buttons: true,
                buttons: ["<?php echo e(__('cancel')); ?>", "<?php echo e(__('delete')); ?>"],
                dangerMode: true,
                closeOnClickOutside: false
            }).then(function (willDelete) {
                if (willDelete) {
                    $('#quiz_answer_' + answer_id).remove();
                    swal.stopLoading();
                    swal({
                        title: "<?php echo e(__('deleted')); ?>!",
                        text: "<?php echo e(__('deleted_successfully')); ?>",
                        icon: "success",
                    })
                }
            });
        }
        //delete quiz result
        function delete_quiz_result(answer_id) {
            swal({
                title: "<?php echo e(__('are_you_sure?')); ?>",
                text: "<?php echo e(__('it_will_be_deleted_permanently')); ?>",
                icon: "warning",
                buttons: true,
                buttons: ["<?php echo e(__('cancel')); ?>", "<?php echo e(__('delete')); ?>"],
                dangerMode: true,
                closeOnClickOutside: false
            }).then(function (willDelete) {
                if (willDelete) {
                    $('#panel_quiz_result_' + answer_id).remove();
                    swal.stopLoading();
                    swal({
                        title: "<?php echo e(__('deleted')); ?>!",
                        text: "<?php echo e(__('deleted_successfully')); ?>",
                        icon: "success",
                    })
                }
            });
        }
    </script>

    <script>
        $(document).on('click', '.btn-delete-selected-image', function () {
            var result_id = $(this).attr("data-answer-id");
            console.log(result_id)
            var question_id = $(this).attr("data-question-id");
            var input = '<input type="hidden" name="result_image[]" value="">';
            var content = '<div class="quiz-answer-image-container">' +
                input +
                '<a class="btn-select-image btn-image-modal" data-toggle="modal" id="btn_image_modal" data-target=".image-modal-lg"  data-id="1" data-quiz-image-type="answer" data-question-id="'+ question_id +'" data-answer-id="' + result_id + '">' +
                '<div class="btn-select-image-inner">' +
                '<i class="icon-images fa fa-picture-o"></i>' +
                '<button class="btn"><?php echo e(__('select_image')); ?></button>' +
                '</div>' +
                '</a>' +
                '</div>';
            document.getElementById("quiz_answer_image_container_answer_" + result_id).innerHTML = content;
        });
    </script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('common::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\news\Modules\Post\Providers/../Resources/views/personality_quiz_create.blade.php ENDPATH**/ ?>