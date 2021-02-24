<?php
$section_image = get_field('section_image');
$section_title = get_field('section_title');
$section_body = get_field('section_body');

?>
<section id="who-benefit">
    <div class="container">
        <div class="section-header">
        <?php if(!empty($section_image)) : ?>
            <img src="<?php echo $section_image['url']; ?>" alt="<?php echo $section_image['alt']; ?>">
        <?php endif; ?>
            <h2><?php echo $section_title; ?></h2>
        </div>
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <?php echo $section_body; ?>
            </div>
        </div>
    </div>
</section>