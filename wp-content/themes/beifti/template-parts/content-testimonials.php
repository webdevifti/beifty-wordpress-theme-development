<section id="testimonial">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <h2>What People Are Saying About Me</h2>
                <?php $loop = new WP_Query( array( 'post_type' => 'testimonial', 'orderby' => 'post_id', 'order' => 'ASC' )); ?>
                <?php while($loop->have_posts()) : $loop->the_post(); ?>
                    <div class="row testimonials">
                        <div class="col-sm-4">
                            <?php if(the_post_thumbnail()) : the_post_thumbnail(); endif; ?>
                        </div>
                        <div class="col-sm-8">
                            <blockquote>
                                <?php the_content(); ?>
                                <cite>&mdash; <?php the_title(); ?></cite>
                            </blockquote>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>
        </div>
    </div>
</section>