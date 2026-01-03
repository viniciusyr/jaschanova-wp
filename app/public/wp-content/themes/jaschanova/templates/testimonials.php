<?php 
$testimonials = new WP_Query(['post_type' => 'testimonials']);
if($testimonials->have_posts()):
    while($testimonials->have_posts()): $testimonials->the_post();

    $client_name = get_field('client_name');
    $company = get_field('company'); 
    $testimonial_text = get_field('testimonial_text'); 

    $image = get_field('testimonial_image'); 
if($image){
    $image_id = is_array($image) ? $image['ID'] : $image; 
    $image_url = wp_get_attachment_image_url($image_id);
}
?>
    <div class="testimonial-item">
        <?php if($image_url): ?>
            <img src="<?php echo esc_url($image_url); ?>" alt="<?php the_title(); ?>">
        <?php endif; ?>
        <h3><?php the_title(); ?></h3> 
        <p class="client-name"><?php echo esc_html($client_name); ?></p>
        <p class="company"><?php echo esc_html($company); ?></p>
        <p class="testimonial-text"><?php echo esc_html($testimonial_text); ?></p>
    </div>
<?php 
    endwhile;
    wp_reset_postdata();
endif;
?>
