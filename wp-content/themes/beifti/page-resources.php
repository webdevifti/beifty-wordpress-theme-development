<?php
/*

Template Name: Resources

*/
get_header();
$thumbnail_url = wp_get_attachment_url(get_post_thumbnail_id($post->ID))
?>
<?php 
if(has_post_thumbnail()) : ?>
    <section class="feature-image" style="background: url('<?php echo $thumbnail_url; ?>') no-repeat; background-size: cover;" data-type="background" data-speed="2">
        <h1 class="page-title"><?php the_title(); ?></h1>
    </section>
<?php else : ?>
    <section class="feature-image feature-image-default" data-type="background" data-speed="2">
        <h1 class="page-title"><?php the_title(); ?></h1>
    </section>
<?php endif; ?>
<!-- Blog Content
==================== -->

<div class="container">
    <div class="row" id="primary">
        <div id="content" class="col-sm-12">
            <section class="main-content">
                <?php while(have_posts()) : the_post(); ?>
                    <?php the_content(); ?>
                <?php endwhile; ?>
                <hr>

                <?php $loop = new WP_Query( array( 'post_type' => 'resource', 'orderby' => 'post_id', 'order' => 'ASC' )); ?>
               
                <div class="resource-row clearfix">
                <?php while($loop->have_posts()) : $loop->the_post(); ?>
                <?php 
                    $resource_img = get_field('resource_image');
                    $resource_url = get_field('resource_url');
                    $btn_text = get_field('button_text');
                ?>
                 <div class="col-sm-4 resource">
                        <img src="<?php echo $resource_img['url']; ?>" alt="<?php echo $resource_img['alt']; ?>">
                        <h3><a href="<?php echo $resource_url; ?>"><?php the_title(); ?></a></h3>
                        <?php the_content(); ?>
                        <?php if(!empty($btn_text)) : ?>
                        <a href="<?php echo $resource_url; ?>" class="btn btn-success"><?php echo $btn_text; ?></a>
                        <?php endif; ?>
                    </div>
                    
                <?php endwhile; ?>
                   
                   
                </div>
            </section>
        </div> 
    </div>
</div>
<?php
get_footer();
?>