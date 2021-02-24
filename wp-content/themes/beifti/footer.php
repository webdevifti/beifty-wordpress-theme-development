<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package beifti
 */

?>


<?php wp_footer(); ?>
<!-- SIGN UP SECTION
           ====================-->
		   <section id="signup" data-type="background" data-speed="4">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h2>Are you ready take your coding skill to the <strong>next label</strong></h2>
                    <p><a href="#" class="btn btn-success btn-block btn-lg">Yes! sign me up</a></p>
                </div>
            </div>
        </div>   
    </section>

    <!-- FOOTER
           ==================== -->
    <footer>
        <div class="container">
            <div class="col-sm-3">
                <a href="#" class="brand">Be IfTi</a>
            </div>
            <div class="col-sm-6">
              <?php 
              wp_nav_menu( array(
                  'theme_location' => 'footer',
                  'container' => 'nav',
                  'menu_class' => 'list-unstyled list-inline',
                  
              ));
              ?>
            </div>
            <div class="col-sm-3">
                <p class="footer-copyright">&copy; 2020 Be IfTi</p>
            </div>
        </div>
    </footer>

    <!-- MODAL
           ====================-->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel"><i class="fa fa-envelope"></i> Subscribe our mailing list</h4>
                </div>
                <div class="modal-body">
                    <p>Simply enter your name and email! As a thank you for joining us, we are going to give you one of our best selling courses. <em>for free.</em></p>
                    <form action="#" class="form-inline" role="form">
                        <div class="form-group">
                            <label class="sr-only" for="subscribr-name">Your name</label>
                            <input type="text" class="form-control" id="subscribe-name" placeholder="Enter your name" required>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="subscribr-name"> and your email</label>
                            <input type="email" class="form-control" id="subscribe-email" placeholder="Enter your email" required>
                        </div>
                        <div class="form-group">
                            
                            <input type="submit" class="btn btn-danger" value="Subscribe!">
                        </div>
                    </form>
                    <hr>
                    <p><small>By providing your email you consent to receiving occasional promotionals email &amp; newsletters. <br>No spam. just good stuff. We respect your privacy &amp; you may unsubscribe anytime. </small></p>
                </div>
            </div>
        </div>
    </div>
	<script src="<?php bloginfo('template_directory') ?>/assets/js/jquery-3.3.1.min.js"></script>
	<script src="<?php bloginfo('template_directory') ?>/assets/js/bootstrap.min.js"></script>
	<script src="<?php bloginfo('template_directory') ?>/assets/js/main.js"></script>
</body>
</html>
