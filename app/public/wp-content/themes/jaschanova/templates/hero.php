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
