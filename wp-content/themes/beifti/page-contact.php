<?php
/* 
Template Name: Contact Page

*/
get_header();
?>
	<section class="feature-image feature-image-default-alt" data-type="background" data-speed="2">
        <h1 class="page-title">Contact</h1>
    </section>
	
	<div class="container">
		<div class="row" id="primary">
			<main id="content" class="col-sm-12" role="main">
                <section class="main-content">
                <?php while(have_posts()) : the_post(); ?>
                    <?php the_content(); ?>
                 <?php  endwhile; ?>
                </section>
            </main>
        </div>
    </div>
<?php get_footer(); ?>