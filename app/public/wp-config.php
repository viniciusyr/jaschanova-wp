<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '#H~%&4WmTAW#bU5E7(Pk,E3kqr`u!n><SotlGS[o2KwJe/l]dbL#j_PUW=K<W:z,' );
define( 'SECURE_AUTH_KEY',   'I`L!1ukTWIXFOb+Q;MNZtI5^G`asI cg}6!zo}&839ia)(=fgi9{M)&V$EAMu}N,' );
define( 'LOGGED_IN_KEY',     'U~|PHBAS2f,-_i/^xGwQJc[vmBS65V[nRG:)-VYRfGI?U`|pDuytn?E@QpicBjnS' );
define( 'NONCE_KEY',         ']lqQ+@<@*V~h=??&aS@<8[DCB %=|&WUEZyG;[2Gw,l6n-KOO~VzRU9PV-elZGiC' );
define( 'AUTH_SALT',         '~.s^jbJtjbZJr bz>?#l#&0~r3#jN&8#)7B&dU.J,?va6cFfr($+n9r6x1Zj}OAO' );
define( 'SECURE_AUTH_SALT',  '=@*%ONAg(^cEz?Vk}8[^mlaf(Ps*Fr6vB}}$EQ57)<u->n YjA&%OM~5Z=j7xH_N' );
define( 'LOGGED_IN_SALT',    'n8a-;ZMX;Ey,/J|pK1CCB:Xu?_;O##A()+[Ki?LLgB ^v(ek3~Tkd]t]EwALejuf' );
define( 'NONCE_SALT',        'v!oFdZD.,Bll+d5tnE9+wEE},B`m9%d$a9L9Lo&-BRpZ^2:%Ny78X#},CY@.[tn1' );
define( 'WP_CACHE_KEY_SALT', 'Rxnj`>Qs2qZp+RuO>NB!zF(s5n5NF&xx9G%?j(FX>3`(A7/%l|]XjNy+/cd<)fFd' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
