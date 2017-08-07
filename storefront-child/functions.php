<?php

// Override default theme
add_action( 'init', function() {

	// If you don't need storefront style, uncomment this.
	//wp_register_style( 'storefront-style', get_stylesheet_directory_uri() . '/assets/css/style.css', [], wp_get_theme()->get( 'Version' ) );

} );

// Enqueue style
add_action( 'wp_enqueue_scripts', function() {

	// If you need storefront, enqueue it with dependnecy
	//wp_enqueue_style( 'storefront-child', get_stylesheet_directory_uri() . '/assets/css/style.css', [ 'storefront-style' ], wp_get_theme()->get( 'Version' ) );

} );


// Load all files inside includes dir.
// The file started with _ will be ignored.
$dir = __DIR__ . '/includes';
if ( is_dir( $dir ) ) {
	foreach ( scandir( $dir ) as $file ) {
		if ( preg_match( '#^[^_.].*\.php$#u', $file ) ) {
			require $dir . '/' . $file;
		}
	}
}
