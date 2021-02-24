<?php

$final_project_title = get_field('project_feature_title');
$final_project_body = get_field('project_feature_body');

?>

<section id="project-feature">
    <div class="container">
        <h2><?php echo $final_project_title; ?></h2>
        <p><?php echo $final_project_body; ?></p>
        <div class="row">
            <?php $loop = new WP_Query( array( 'post_type' => 'project_feature', 'orderby' => 'post_id', 'order' => 'ASC' )); ?>
            <?php while($loop->have_posts()) : $loop->the_post(); ?>
                <div class="col-sm-4">
                    <?php
                    if(has_post_thumbnail() ) : the_post_thumbnail(); endif; 
                    ?>
                    <h3><?php the_title(); ?></h3>
                    <p><?php the_content(); ?></p>
                </div>
            <?php endwhile; ?>

            
        </div>
    </div>
</section>