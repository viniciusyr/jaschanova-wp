        <footer class="site-footer">
            <div class="container">
                <div class="copyright">
                    <p>Copyright X - All Rights Reserved</p>
                </div>
                <div class="footer-menu">
                    <?php wp_nav_menu(array('wp_devs_footer_menu' => 'Footer Menu', 
                    'depth' => 1))?>
                </div>
            </div>
        </footer>
    </div>
    <?php wp_footer(); ?>
</body>
</html>