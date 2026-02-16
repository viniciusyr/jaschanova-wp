<?php
$about_title = get_field('about_title');
$about_subtitle = get_field('about_subtitle');
$about_text = get_field('about_text');
$about_image = get_field('about_image');


if($about_image){
    $image_url = $about_image['url'];
    $image_alt = $about_image['alt'] ? $about_image['alt'] : 'About Image';
} else {
    $image_url = '';
    $image_alt = '';
}
?>
<section id="about" class="about-section">
    <div class="container">
    <div class="about-container">
        <div class="left-box">
            <?php if($image_url): ?>
                <img src="<?php echo esc_url($image_url); ?>" alt="<?php echo esc_attr($image_url) ?>">></h1>
        <?php endif; ?>
        </div>
        <div class="right-box">
            <div class="about-title">
                <?php if($about_title): ?>
                            <h1><?php echo esc_html($about_title)?></h1>
                    <?php endif; ?>
            </div>
            <div class="about-subtitle">
                <?php if($about_subtitle): ?>
                            <h2><?php echo esc_html($about_subtitle)?></h2>
                    <?php endif; ?>
            </div>
            <div class="about-text">
                    <?php if($about_text): ?>
                            <p><?php echo esc_html($about_text)?></p>
                    <?php endif; ?>
            </div>
                    

            <div class="about-socials">
                <ul>
                    <li>
                        <i class="fa-brands fa-linkedin"></i>     
                    </li>
                </ul>
            </div>

        </div>
        </div>
    </div>
</section>