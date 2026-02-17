<?php

function jn_enqueue_styles(){
    wp_enqueue_style('jn-style', get_stylesheet_uri(), array(), filemtime(get_template_directory().'/style.css'), 'all' );

    wp_enqueue_style(
    'google-fonts',
    'https://fonts.googleapis.com/css2?family=Galada&family=Montserrat:wght@400;700&display=swap',
    array(),
    null );

    wp_enqueue_style('font-awesome', get_template_directory_uri() . '/assets/fontawesome/css/all.min.css', array(), '7.1.0');

    wp_enqueue_script('services-carousel', get_template_directory_uri() . '/js/services-carousel.js', array(), '1.0', true );

    // wp_enqueue_script('dropdown', get_template_directory_uri().'/js/dropdown.js', array(), '1.0', true );
}

add_action('wp_enqueue_scripts', 'jn_enqueue_styles');

function register_services_cpt() {
    register_post_type('services', [
        'labels' => [
            'name' => 'Services',
            'singular_name' => 'Service',
            'add_new' => 'Add Service',
            'add_new_item' => 'Add New Service',
            'edit_item' => 'Edit Service',
        ],
        'public' => false,
        'show_ui' => true,
        'show_in_menu' => true,
        'supports' => ['title'],
    ]);
}
add_action('init', 'register_services_cpt');

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

function register_careers_cpt() {
    register_post_type('careers', [
        'labels' => [
            'name' => 'Careers',
            'singular_name' => 'Career',
            'add_new' => 'Add Career',
            'add_new_item' => 'Add New Career',
            'edit_item' => 'Edit Career',
        ],
        'public' => false,
        'show_ui' => true,
        'show_in_menu' => true,
        'supports' => ['title'],
        'menu_icon' => 'dashicons-briefcase',
    ]);
}
add_action('init', 'register_careers_cpt');

function register_acf_fields_for_careers() {
    if ( function_exists( 'acf_add_local_field_group' ) ) {
        acf_add_local_field_group( array(
            'key' => 'group_careers',
            'title' => 'Career Information',
            'fields' => array(
                array(
                    'key' => 'field_career_logo',
                    'label' => 'Company Logo',
                    'name' => 'company_logo',
                    'type' => 'image',
                    'return_format' => 'array',
                    'preview_size' => 'medium',
                ),
                array(
                    'key' => 'field_career_title',
                    'label' => 'Job Title',
                    'name' => 'job_title',
                    'type' => 'text',
                ),
                array(
                    'key' => 'field_career_location',
                    'label' => 'Location',
                    'name' => 'location',
                    'type' => 'text',
                    'placeholder' => 'e.g., New York, NY',
                ),
                array(
                    'key' => 'field_career_date',
                    'label' => 'Date',
                    'name' => 'career_date',
                    'type' => 'text',
                    'placeholder' => 'e.g., Jan 2023 - Dec 2024',
                ),
                array(
                    'key' => 'field_career_description',
                    'label' => 'Job Description',
                    'name' => 'job_description',
                    'type' => 'textarea',
                    'rows' => 4,
                    'placeholder' => 'Describe your responsibilities and achievements in this role.',
                ),
            ),
            'location' => array(
                array(
                    array(
                        'param' => 'post_type',
                        'operator' => '==',
                        'value' => 'careers',
                    ),
                ),
            ),
        ) );
    }
}
add_action('acf/init', 'register_acf_fields_for_careers');

