<?php
/**
 * Used to set up custom parameters during WordPress install process
 * Must be in the same DIR as the Phing build script
 * 
 * Only run when using "phing wp-install" or "phing wp-install-only".
 *
 * @internal This file uses build.properties settings
 *
 * @package WordPhing
 */


// Add custom install code here
 

    //Example: remove Hello Dolly
	delete_plugins(array('hello.php'));

	      
	 
?>