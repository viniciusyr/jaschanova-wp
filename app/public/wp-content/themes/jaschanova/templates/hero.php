<?php 
$hero_title = get_field('hero_title');
$hero_subtitle = get_field('hero_subtitle');
$hero_button_text = get_field('hero_button_text');
$hero_button_url = get_field('hero_button_url');
$hero_image = get_field('hero_image');
$hero_year_exp = get_field('hero_year_exp');

if($hero_image){
    $image_url = $hero_image['url'];
    $image_alt = $hero_image['alt'] ? $hero_image['alt'] : 'Hero Image';
} else {
    $image_url = '';
    $image_alt = '';
}

function exp_calculator(int $initial_date): int {
    $initial = new DateTime($initial_date . '-01-01');
    $today = new DateTime();

    return $initial->diff($today)->y;
}
?>

<section class="hero-section">
  <div class="container">
    <div class="hero-container">
      <div class="bg-circle">

      </div>
      <div class="hero-doodles" aria-hidden="true">
        <img class="hero-doodle doodle-1" src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/doodles/doodle-1.png'); ?>" alt="">
        <img class="hero-doodle doodle-2" src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/doodles/doodle-2.svg'); ?>" alt="">
        <img class="hero-doodle doodle-3" src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/doodles/doodle-3.png'); ?>" alt="">
        <img class="hero-doodle doodle-4" src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/doodles/doodle-4.png'); ?>" alt="">
        <img class="hero-doodle doodle-5" src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/doodles/doodle-5.svg'); ?>" alt="">
        <img class="hero-doodle doodle-6" src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/doodles/doodle-6.png'); ?>" alt="">
        <img class="hero-doodle doodle-7" src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/doodles/doodle-7.png'); ?>" alt="">
        <img class="hero-doodle doodle-8" src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/doodles/doodle-8.svg'); ?>" alt="">
         <img class="hero-doodle doodle-9" src="<?php echo esc_url(get_template_directory_uri() . '/assets/images/doodles/doodle-9.png'); ?>" alt="">
      </div>
      <div class="hero-center">
        I'm Jascha,
        <br>
        <div class="second-text">
          Virtual Assistant
        </div>
      </div>
      <div class="animation">
        
      </div>
      <div class="hero-left">
        <?php if($hero_title): ?>
          <h1><?php echo esc_html($hero_title); ?></h1>
        <?php endif; ?>

        <?php if($hero_subtitle): ?>
          <h3><?php echo esc_html($hero_subtitle); ?></h3>
        <?php endif; ?>

        <?php if($hero_button_text && $hero_button_url): ?>
          <a href="<?php echo esc_url($hero_button_url); ?>" class="btn-primary">
            <?php echo esc_html($hero_button_text); ?>
          </a>
        <?php endif; ?>
      </div>

      <div class="hero-right">
        <div class="stars-container">
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
        </div>
        <h1> <?php echo esc_html(exp_calculator((int) $hero_year_exp)); ?> Years</h1>
        <span>Experience</span>
      </div>

      <?php if($image_url): ?>
        <img class="hero-image"
             src="<?php echo esc_url($image_url); ?>"
             alt="<?php echo esc_attr($image_alt); ?>">
      <?php endif; ?>


    </div>
  </div>
</section>
