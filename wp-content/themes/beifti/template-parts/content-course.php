<?php

$course_feature_image = get_field('feature_image');
$title = get_field('title');

?>
<section id="course-feature">
    <div class="container">
        <div class="section-header">
        <?php if(!empty($course_feature_image)) : ?>
            <img src="<?php echo $course_feature_image['url']; ?>" alt="<?php echo $course_feature_image['alt']; ?>">
        <?php endif; ?>
            <h2><?php echo $title; ?></h2>
        </div>
        <div class="row">
        <?php $loop = new WP_Query( array( 'post_type' => 'course_feature', 'orderby' => 'post_id', 'order' => 'ASC' )); ?>
        <?php while($loop->have_posts()) : $loop->the_post(); ?>
            <div class="col-sm-2">
                <i class="<?php the_field('course_feature_icon'); ?>"></i>
                <h4><?php the_title(); ?></h4>
            </div>
        <?php endwhile; wp_reset_query(); ?>
        </div>
    </div>
</section>