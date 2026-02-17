<?php 
$testimonials = new WP_Query([
    'post_type' => 'testimonials',
    'posts_per_page' => -1,
    'orderby' => 'date',
    'order' => 'DESC',
]);
?>

<section id="testimonials" class="testimonials-section">
    <div class="container">
        <div class="testimonials-header">
            <h1 class="testimonials-title">What Clients Say</h1>
            <p class="testimonials-subtitle">Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque officiis maxime temporibus possimus necessitatibus ducimus voluptatibus quidem eligendi sed molestias illo tempore est, corporis quisquam cum quia soluta ab quo?</p>
        </div>
        
        <?php if($testimonials->have_posts()): ?>
            <div class="testimonials-carousel-container">
                <div class="testimonials-carousel">
                    <?php while($testimonials->have_posts()): $testimonials->the_post();
                        $client_name = get_field('client_name');
                        $client_position = get_field('client_position');
                        $client_company = get_field('client_company');
                        $testimonial_text = get_field('testimonial_text');
                        $image = get_field('testimonial_image');
                        $image_url = '';
                        
                        if($image){
                            $image_url = is_array($image) ? $image['url'] : wp_get_attachment_image_url($image);
                        }
                    ?>
                        <div class="testimonial-card">
                            <div class="testimonial-header">
                                <div class="testimonial-avatar">
                                    <?php if($image_url): ?>
                                        <img src="<?php echo esc_url($image_url); ?>" alt="<?php echo esc_attr($client_name); ?>">
                                    <?php else: ?>
                                        <div class="testimonial-avatar-placeholder">
                                            <?php echo esc_html(substr($client_name, 0, 1)); ?>
                                        </div>
                                    <?php endif; ?>
                                </div>
                                <div class="testimonial-info">
                                    <h3 class="testimonial-name"><?php echo esc_html($client_name); ?></h3>
                                    <p class="testimonial-position">
                                        <?php echo esc_html($client_position); ?><?php echo $client_company ? ', ' . esc_html($client_company) : ''; ?>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="testimonial-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            
                            <p class="testimonial-text"><?php echo esc_html($testimonial_text); ?></p>
                        </div>
                    <?php endwhile; ?>
                </div>
            </div>
            
            <div class="testimonials-pagination"></div>
        <?php else: ?>
            <p class="testimonials-no-posts">No testimonials found.</p>
        <?php endif; ?>
        
        <?php wp_reset_postdata(); ?>
    </div>
</section>
