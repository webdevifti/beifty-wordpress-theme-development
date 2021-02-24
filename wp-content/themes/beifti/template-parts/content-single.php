<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package beifti
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header>
		<?php
		if ( is_singular() ) :
			the_title( '<h3 class="entry-title">', '</h3>' );
		else :
			the_title( '<h3><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h3>' );
		endif;

		if ( 'post' === get_post_type() ) :
			?>
			<div class="post-details">
				<i class="fa fa-user"></i> <?php the_author(); ?>
				<i class="fa fa-clock-o"></i> <time><?php the_date(); ?></time> 
				<i class="fa fa-folder-open"></i> <?php the_category(', '); ?>
				<i class="fa fa-tags"></i> <?php the_tags(); ?>
				<div class="post-comment-badge">
					<a href="<?php comments_link(); ?>"><i class="fa fa-comments"></i> <?php comments_number(0,1,'%'); ?></a>
				</div>
				<i class="fa fa-pencil"> <?php edit_post_link(); ?></i>
			</div>
		<?php endif; ?>
	</header>
	<?php if(has_post_thumbnail()) : ?>
	<div class="post-image">
		<?php the_post_thumbnail(); ?>
	</div>
	<?php endif; ?>
	<div class="post-excerpt">
		<?php the_content(); ?>
	</div>
</article><!-- #post-<?php the_ID(); ?> -->
