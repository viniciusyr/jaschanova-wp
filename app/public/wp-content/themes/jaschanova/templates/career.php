<?php
$careers_query = new WP_Query([
    'post_type' => 'careers',
    'posts_per_page' => -1,
    'orderby' => 'date',
    'order' => 'DESC',
]);
?>

<section id="career" class="career-section">
    <div class="container">
        <div class="career-header">
            <h1 class="career-title">My Work Experience</h1>
        </div>
        
        <div class="career-cards-grid">
            <?php 
            if ( $careers_query->have_posts() ) :
                while ( $careers_query->have_posts() ) : $careers_query->the_post();
                    $logo = get_field('company_logo');
                    $job_title = get_field('job_title');
                    $location = get_field('location');
                    $career_date = get_field('career_date');
                    $job_description = get_field('job_description');
            ?>
                <div class="career-card">
                    <div class="career-card-header">
                        <?php if ($logo) : ?>
                            <div class="career-card-logo">
                                <img src="<?php echo esc_url($logo['url']); ?>" 
                                     alt="<?php echo esc_attr($logo['alt']); ?>"
                                     title="<?php echo esc_attr($logo['alt']); ?>">
                            </div>
                        <?php endif; ?>
                        
                        <div class="career-card-title-section">
                            <h2 class="career-card-title"><?php echo esc_html($job_title); ?></h2>
                            <div class="career-card-meta">
                                <?php if ($location) : ?>
                                    <span class="career-location">
                                        <i class="fas fa-map-marker-alt"></i> <?php echo esc_html($location); ?>
                                    </span>
                                <?php endif; ?>
                                <?php if ($career_date) : ?>
                                    <span class="career-date">
                                        <i class="fas fa-calendar-alt"></i> <?php echo esc_html($career_date); ?>
                                    </span>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    
                    <?php if ($job_description) : ?>
                        <div class="career-card-description">
                            <?php echo wp_kses_post(wpautop($job_description)); ?>
                        </div>
                    <?php endif; ?>
                </div>
            <?php 
                endwhile;
                wp_reset_postdata();
            else :
                echo '<p class="career-no-posts">No work experience found.</p>';
            endif;
            ?>
        </div>
    </div>
</section>