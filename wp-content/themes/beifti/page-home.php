<?php
/*
 Template Name: Home Page

*/

get_header();
?>
    <!--  HERO
    =================-->
	    <?php get_template_part('template-parts/content','hero'); ?>

    <!-- OPT IN SECTION
        ===================-->
        <?php get_template_part('template-parts/content','opt'); ?>
        
    <!-- BOOST YOUR INCOME
         ================= -->
        <?php get_template_part('template-parts/content','boost'); ?>

    <!-- WHO BENEFITS
          ==================-->
        <?php get_template_part('template-parts/content','benefit'); ?>

    <!-- COURSE FEATURES
           =================-->
        <?php get_template_part('template-parts/content','course'); ?>

    <!-- PROJECT FEATURES
           ====================-->
        <?php get_template_part('template-parts/content','project'); ?>

    <!--TESTIMONIALS
           ====================-->
        <?php get_template_part('template-parts/content','testimonials'); ?>

<?php
get_footer(); ?>
