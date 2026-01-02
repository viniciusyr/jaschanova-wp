<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset')?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <div id="page" class="site">
        <header>
            <section class="top-bar">
                <div class="container">
                    <div class="logo">
                    <?php 
                        if(has_custom_logo()){
                            the_custom_logo();
                        } else {
                            ?>
                                <a href="<?php echo esc_url(home_url('/')); ?>">
                                    <h1><?php bloginfo('name'); ?></h1>
                                </a>
                            <?php
                        } ?>
                    </div>
                </div>
            </section>
            <section class="menu-area">
                <div class="container">
                    <nav>
                        <ul>
                            <li><a href="#about">About</a></li>
                            <li><a href="#career">Career</a></li>
                            <li><a href="#skills-tools">Skills & Tools</a></li>
                            <li><a href="#testimonials">Testimonials</a></li>
                            <li><a href="#va-life">VA Life</a></li>
                        </ul>
                    </nav>
                </div>
            </section>
        </header>
