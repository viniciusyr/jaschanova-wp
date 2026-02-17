<?php
$about_query = new WP_Query([
    'post_type' => 'about',
    'posts_per_page' => 1,
    'orderby' => 'date',
    'order' => 'DESC',
]);

$about_title = '';
$about_text = '';
$about_image = '';
$projects_count = '';
$clients_count = '';
$button_text = 'Hire Me';
$button_link = '#contact';
$image_url = '';
$image_alt = '';

if ($about_query->have_posts()) {
    $about_query->the_post();
    $about_title = get_field('about_title');
    $about_text = get_field('about_text');
    $about_image = get_field('about_image');
    $projects_count = get_field('projects_count');
    $clients_count = get_field('clients_count');
    $button_text = get_field('button_text') ? get_field('button_text') : 'Hire Me';
    $button_link = get_field('button_link') ? get_field('button_link') : '#contact';
    
    if ($about_image) {
        $image_url = $about_image['url'];
        $image_alt = $about_image['alt'] ? $about_image['alt'] : 'About Image';
    }
    
    wp_reset_postdata();
}
?>

<section id="about" class="about-section">
    <div class="container">
        <div class="about-container">
            <div class="left-box">
                <?php if($image_url): ?>
                    <img src="<?php echo esc_url($image_url); ?>" alt="<?php echo esc_attr($image_alt); ?>">
                <?php endif; ?>
            </div>
            
            <div class="right-box">
                <h1 class="about-title"><?php echo esc_html($about_title ? $about_title : 'Why Hire Me'); ?></h1>
                
                <p class="about-text">
                    <?php if($about_text): ?>
                        <?php echo wp_kses_post(wpautop($about_text)); ?>
                    <?php else: ?>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    <?php endif; ?>
                </p>
                
                <div class="about-stats">
                    <div class="about-stat-item">
                        <div class="about-stat-number">
                            <?php echo esc_html($projects_count ? $projects_count : '150+'); ?>
                        </div>
                        <div class="about-stat-label">Projects Completed</div>
                    </div>
                    
                    <div class="about-stat-item">
                        <div class="about-stat-number">
                            <?php echo esc_html($clients_count ? $clients_count : '80+'); ?>
                        </div>
                        <div class="about-stat-label">Clients Satisfied</div>
                    </div>
                </div>
                
                <a href="<?php echo esc_attr($button_link); ?>" class="about-cta-button"><?php echo esc_html($button_text); ?></a>
            </div>
        </div>
    </div>
</section>