<?php
/**
 * Used to run any script on WordPress.
 * Must be in the same DIR as the Phing build script
 * 
 * Use "phing wp-run" to run script
 * See http://codex.wordpress.org/Function_Reference for Examples
 * 
 *
 * @internal This file uses build.properties settings
 *
 * @package WordPhing
 */



//Example: to create 35 posts on the fly

for ($k = 0 ; $k < 35; $k++){ 

             // Create post object
         
			$my_post = array(
				'post_title'    => $k . '- Posts',
				'post_content'  => 'This is my post.',
				'post_status'   => 'publish',
				'post_author'   => 1,
				'post_category' => array(1)
				);

				// Insert the post into the database
				wp_insert_post( $my_post );

			}
	 
?>