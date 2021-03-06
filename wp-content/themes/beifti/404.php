<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package beifti
 */

get_header();
?>

<section class="feature-image feature-image-default-alt" data-type="background" data-speed="2">
	<h1 class="page-title"><?php esc_html_e( 'Oops! That page can&rsquo;t be found.', 'beifti' ); ?></h1>
</section>
	
	<div class="container">
		<div class="row" id="primary">
			<main id="content" class="col-sm-12" role="main">
				<section class="error-404 not-found">
					<header class="text-center">
					<p><?php esc_html_e( 'It looks like nothing was found at this location. Maybe try one of the links below or a search?', 'beifti' ); ?><?php
					get_search_form(); ?></p>
					</header>
				
					<div class="page-content">
						<div class="row">
							<div class="col-sm-4">
								<?php
							the_widget( 'WP_Widget_Recent_Posts' );
							?>

							</div>
							<div class="col-sm-4">
								<div class="widget widget_categories">
									<h2 class="widget-title"><?php esc_html_e( 'Most Used Categories', 'beifti' ); ?></h2>
									<ul>
										<?php
										wp_list_categories(
											array(
												'orderby'    => 'count',
												'order'      => 'DESC',
												'show_count' => 1,
												'title_li'   => '',
												'number'     => 10,
											)
										);
										?>
									</ul>
								</div><!-- .widget -->
							</div>
							<div class="col-sm-4">
								<?php
								/* translators: %1$s: smiley */
								$beifti_archive_content = '<p>' . sprintf( esc_html__( 'Try looking in the monthly archives. %1$s', 'beifti' ), convert_smilies( ':)' ) ) . '</p>';
								the_widget( 'WP_Widget_Archives', 'dropdown=1', "after_title=</h2>$beifti_archive_content" );
								?>
							
							</div>
							<div class="col-sm-4">
								<?php the_widget( 'WP_Widget_Tag_Cloud' ); ?>
							</div>
						</div>
					</div><!-- .page-content -->
				</section><!-- .error-404 -->
			</main><!-- #main -->
		</div>
	</div>

<?php
get_footer();
