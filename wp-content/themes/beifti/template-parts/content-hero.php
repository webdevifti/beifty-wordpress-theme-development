<?php
$pre_launce_price = get_post_meta('10', 'pre_launce_price', true);
$launce_price = get_post_meta('10', 'launce_price', true);
$final_price = get_post_meta('10', 'final_price', true);
$enroll_url = get_post_meta('10', 'enroll_link', true);
$enroll_button_text = get_post_meta('10', 'enroll_btn_text', true);
?>

<section id="hero" data-type="background" data-speed="5">
    <article>
        <div class="container clearfix">
            <div class="row">
                <div class="col-sm-5">
                    <img src="<?php bloginfo('template_directory') ?>/assets/img/favicon.jpeg" alt="Site Banner Image" class="logo" width="100%">
                </div>
                <div class="col-sm-7 hero-text">
                    <h1><?php bloginfo('name') ?></h1>
                    <p class="lead"><?php bloginfo('description') ?></p>
                    <div id="price-timeline">
                        <div class="price active">
                            <h4>Pre-Launce Price <small>Ends soon!</small></h4>
                            <span><?php echo $pre_launce_price; ?></span>
                        </div>
                        <div class="price">
                            <h4>Launce Price <small>Comming soon!</small></h4>
                            <span><?php echo $launce_price; ?></span>
                        </div>
                        <div class="price">
                            <h4>Pre-Final Price <small>Commin soon!</small></h4>
                            <span><?php echo $final_price; ?></span>
                        </div>
                    </div> <!-- price-timeline-->
                    <p><a target="blank" href="<?php echo $enroll_url; ?>" class="btn btn-danger btn-lg" role="button"><?php echo $enroll_button_text; ?></a></p>
                </div>
            </div>
        </div>
    </article>
</section>