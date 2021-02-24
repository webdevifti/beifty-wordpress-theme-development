<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package beifti
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory') ?>/assets/css/font-awesome.min.css">
	<?php wp_head(); ?>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lte IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">

	<!--  HEADER
        =================-->
		<header class="site-header" role="banner">
        <div class="navbar-wrapper">
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#TopMainNav">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="/beifti" class="navar-brand">
                            <img src="<?php bloginfo('template_directory'); ?>/assets/img/logo.png" alt="Site Logo" width="150px" height="50px">
                        </a>
                    </div>
					<?php
						wp_nav_menu(
							array(
								'theme_location' => 'primary',
								'container' => 'nav',
								'container_class' => 'navbar-collapse collapse',
								'container_id' => 'TopMainNav',
								'menu_class' => 'nav navbar-nav navbar-right'
							)
						);
					?>
                </div>
            </nav>
        </div> <!-- navbar-wrapper-->
    </header>
