<?php
$services = get_posts([
    'post_type' => 'services',
    'numberposts' => -1,
    'orderby' => 'menu_order',
    'order' => 'ASC',
]);
$service_count = count($services);
?>

<section class="services-section">
    <div class="container">
        <div class="services-top-container">
            <div class="title">
                <h1>My Services</h1>
            </div>
            <div class="phrase">
                <p>Professional, organized and client-focused support designed to keep your business running smoothly.</p>
            </div>
        </div>

        <div class="services-cpt-box">
            <div class="services-carousel-container">
                <div class="services-carousel">
                    <?php foreach ($services as $index => $service) :
                        $service_image = get_field('service_image', $service->ID);
                        $image_url = is_array($service_image) ? $service_image['url'] : $service_image;
                    ?>
                        <article class="services-card" data-slide="<?php echo $index; ?>">
                            <div class="services-card-image">
                                <?php if ($image_url) : ?>
                                    <img src="<?php echo esc_url($image_url); ?>" alt="<?php echo esc_attr($service->post_title); ?>">
                                <?php endif; ?>
                            </div>
                            <h3 class="services-card-title"><?php echo esc_html($service->post_title); ?></h3>
                        </article>
                    <?php endforeach; ?>
                </div>
            </div>

            <?php if ($service_count > 1) : ?>
                <div class="services-pagination">
                    <?php for ($i = 0; $i < $service_count; $i++) : ?>
                        <button class="pagination-dot <?php echo $i === 0 ? 'active' : ''; ?>" data-slide="<?php echo $i; ?>" aria-label="Go to slide <?php echo $i + 1; ?>"></button>
                    <?php endfor; ?>
                </div>
            <?php endif; ?>
        </div>
        
    </div>
</section>