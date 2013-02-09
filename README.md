WordPhing
=========

WordPress build script using [Phing](http://www.phing.info/).

- Automated Installing and working with WordPress.
- Simple config file and commands to run


*Phing has no dependencies other than PHP, so it will run anywhere PHP does (unlike Apache Ant/Cappicino/Rails, etc). It should work right out of the box on most lamp stacks.

## Features

**Installation Automation:**

- Creation of a new database (optional)
- Downloads and installs WordPress (latest stable)
- Download and installs plugins and/or themes
- Appends needed info to your wp-config
- Runs the WP install script (by-passes the 5 minute install).
- Runs any custom install parameters (optional via `boot.php`)

**Runtime Automation:**

- Allows you to run scripts on a WordPress install, 
    - For example: delete 1000 posts belonging to a category,  see `run.php` for example
    - Still in *beta* please do not run on live site


**Build Automation:**

- Run PHP Documentor 2
- FTP
- Minify js
- Zips or Gzips 

Other: 

- Deletes readme.html and wp-sample-config.php


##Basic Instructions

Open build.properties and fill it out and also read the comments:)

Command options
- `"phing wp-install"`      Creates a database and WordPress
- `"phing wp-install-only"` Creates just WordPress (will not create the database)
- `"phing wp-run"`          Runs custom script
- `"phing wp-doc"`          Runs PHP Documentor 2
- `"phing wp-min-js"`       Minify JS
- `"phing wp-ftp"`          FTP upload
- `"phing wp-zip"`          Creates a zip
- `"phing wp-gzip"`         Creates a gzip
- `"phing help"`            Command line options

Commands are chainable , for example `"phing wp-install wp-gzip"`   

*The build will not overwrite existing directories or existing databases.*  

##Advanced Instructions

WordPhing now contains 2 extra files to run normal PHP and WOrdPress code, have a look at them for examples.
 `boot.php` can be run during the install process to customize installation (creation or removing default content).
 `run.php` can be run via the `phing wp-run` command on an existing WordPress install

 Both files are run from the WordPhing build file root and not the WordPress install root and require build.properties to be properly filled out. You can change the location to to run from the WordPress root in build.xml. 


The file/dir permissions (chown)  are commented out by default to prevent issues on Windows ( see line 457 in build.xml for reference).

##Requires

PHP 5.2 + & Phing.

 - PHP Documentor 2 requires the latest Phing and the XSL PHP extension. You should use the latest build found here: http://www.phpdoc.org/
 - FTP requires Net_FTP http://pear.php.net/package/Net_FTP/redirected

##Notes

If there are problems during install you can run WordPhing in debug and verbose modes or both.

For example: `"phing install -verbose -debug"`

If you want something that has a lot more features please check out WP-CLI.
https://github.com/wp-cli/wp-cli

##Todo

- Add git & svn support
- Add Rsync support
- Add Amazon support
- CSS minify (yui-compress and google closure) requires java
- Moving, staging and backups (phing even has an amazon task)
- Run some tests (phpunit, phpmess)

##Install 

It is recommend you run `"pear upgrade phing/phing"` for the latest release.( required for PHP Documentor 2).

This script will eventually require some optional libraries (http, git, svn, amazon, etc), so you can run `"pear install --alldeps phing/phing"` to get them.

- Seperate install if pear/phing is not included in your stack.

http://www.phing.info/docs/guide/stable/chapters/Setup.html#SystemRequirements

- PEAR package

http://pear.phing.info/

Why Phing? Because it's built with PHP.
https://github.com/phingofficial/phing