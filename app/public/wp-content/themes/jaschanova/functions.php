<?php

function jn_enqueue_styles(){
    wp_enqueue_style('jn-style', get_stylesheet_uri(), array(), filemtime(get_template_directory().'/style.css'), 'all' );

    wp_enqueue_style(
    'google-fonts',
    'https://fonts.googleapis.com/css2?family=Galada&family=Montserrat:wght@400;700&display=swap',
    array(),
    null
);

    // wp_enqueue_script('dropdown', get_template_directory_uri().'/js/dropdown.js', array(), '1.0', true );
}

add_action('wp_enqueue_scripts', 'jn_enqueue_styles');

function register_testimonials_cpt() {
    register_post_type('testimonials', [
        'labels' => [
            'name' => 'Testimonials',
            'singular_name' => 'Testimonial'
        ],
        'public' => false,
        'show_ui' => true,
        'supports' => ['title'],
    ]);
}
add_action('init', 'register_testimonials_cpt');