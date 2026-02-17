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
    
    wp_enqueue_script('testimonials-carousel', get_template_directory_uri() . '/js/testimonials-carousel.js', array(), '1.0', true );

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
            'singular_name' => 'Testimonial',
            'add_new' => 'Add Testimonial',
            'add_new_item' => 'Add New Testimonial',
            'edit_item' => 'Edit Testimonial',
        ],
        'public' => false,
        'show_ui' => true,
        'show_in_menu' => true,
        'supports' => ['title'],
        'menu_icon' => 'dashicons-format-quote',
    ]);
}
add_action('init', 'register_testimonials_cpt');

function register_acf_fields_for_testimonials() {
    if ( function_exists( 'acf_add_local_field_group' ) ) {
        acf_add_local_field_group( array(
            'key' => 'group_testimonials',
            'title' => 'Testimonial Information',
            'fields' => array(
                array(
                    'key' => 'field_testimonial_image',
                    'label' => 'Client Image',
                    'name' => 'testimonial_image',
                    'type' => 'image',
                    'return_format' => 'array',
                    'preview_size' => 'thumbnail',
                ),
                array(
                    'key' => 'field_client_name',
                    'label' => 'Client Name',
                    'name' => 'client_name',
                    'type' => 'text',
                    'placeholder' => 'e.g., John Doe',
                ),
                array(
                    'key' => 'field_client_position',
                    'label' => 'Position',
                    'name' => 'client_position',
                    'type' => 'text',
                    'placeholder' => 'e.g., CEO',
                ),
                array(
                    'key' => 'field_client_company',
                    'label' => 'Company',
                    'name' => 'client_company',
                    'type' => 'text',
                    'placeholder' => 'e.g., Google',
                ),
                array(
                    'key' => 'field_testimonial_text',
                    'label' => 'Testimonial Text',
                    'name' => 'testimonial_text',
                    'type' => 'textarea',
                    'rows' => 4,
                    'placeholder' => 'Enter the client testimonial...',
                ),
            ),
            'location' => array(
                array(
                    array(
                        'param' => 'post_type',
                        'operator' => '==',
                        'value' => 'testimonials',
                    ),
                ),
            ),
        ) );
    }
}
add_action('acf/init', 'register_acf_fields_for_testimonials');

function register_about_cpt() {
    register_post_type('about', [
        'labels' => [
            'name' => 'About',
            'singular_name' => 'About',
            'add_new' => 'Add About',
            'add_new_item' => 'Add New About',
            'edit_item' => 'Edit About',
        ],
        'public' => false,
        'show_ui' => true,
        'show_in_menu' => true,
        'supports' => ['title'],
        'menu_icon' => 'dashicons-info',
    ]);
}
add_action('init', 'register_about_cpt');

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

function register_acf_fields_for_about() {
    if ( function_exists( 'acf_add_local_field_group' ) ) {
        acf_add_local_field_group( array(
            'key' => 'group_about',
            'title' => 'About Section Information',
            'fields' => array(
                array(
                    'key' => 'field_about_title',
                    'label' => 'Title',
                    'name' => 'about_title',
                    'type' => 'text',
                    'placeholder' => 'e.g., Why Hire Me',
                ),
                array(
                    'key' => 'field_about_image',
                    'label' => 'Profile Image',
                    'name' => 'about_image',
                    'type' => 'image',
                    'return_format' => 'array',
                    'preview_size' => 'medium',
                ),
                array(
                    'key' => 'field_about_text',
                    'label' => 'Description',
                    'name' => 'about_text',
                    'type' => 'textarea',
                    'rows' => 6,
                    'placeholder' => 'Enter your about description text...',
                ),
                array(
                    'key' => 'field_projects_count',
                    'label' => 'Projects Completed (e.g., 150+)',
                    'name' => 'projects_count',
                    'type' => 'text',
                    'placeholder' => 'e.g., 150+',
                ),
                array(
                    'key' => 'field_clients_count',
                    'label' => 'Clients Satisfied (e.g., 80+)',
                    'name' => 'clients_count',
                    'type' => 'text',
                    'placeholder' => 'e.g., 80+',
                ),
                array(
                    'key' => 'field_button_text',
                    'label' => 'Button Text',
                    'name' => 'button_text',
                    'type' => 'text',
                    'placeholder' => 'e.g., Hire Me',
                ),
                array(
                    'key' => 'field_button_link',
                    'label' => 'Button Link',
                    'name' => 'button_link',
                    'type' => 'text',
                    'placeholder' => 'e.g., #contact',
                ),
            ),
            'location' => array(
                array(
                    array(
                        'param' => 'post_type',
                        'operator' => '==',
                        'value' => 'about',
                    ),
                ),
            ),
        ) );
    }
}
add_action('acf/init', 'register_acf_fields_for_about');

