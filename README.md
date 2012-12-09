WordPhing
=========

WordPress build and other stuff using Phing.

- Automated Installing WordPress from the command line (install script).
- Currently builds WordPress in about 30 seconds depending on your Internet connection and how many plugins/themes you include.
- Simple config file and command to run

If you want something that has a lot more features please check out WP-CLI.
https://github.com/wp-cli/wp-cli


*Phing has no dependencies other than PHP, so it will run anywhere PHP does (unlike Apache Ant/Cappicino/Rails, etc). It should work right out of the box.

## What does it do?

Install:

- Creates a new database (optional)
- Downloads and installs WordPress (latest stable)
- Download and installs plugins and themes
- Appends needed info to your wp-config
- Runs the WP install script

Some minor changes are made during install, they are;

- Removes Hello Dolly plugin (sry Matt).
- Removes default "Hello World" post, Sample Page, Links.
- Removes default Mr.Wordpress comment.
- Deletes readme.html and wp-sample-config.php

Other: 

- Zips or Gzips directory (the whole thing or just your theme/plugin)
- Run PHP Documentor 2
- FTP
- Minify js


##Basic Instructions

Open build.properties and fill it out and also read the comments:)

Command options
- `"phing wp-install"`      Creates a database and WordPress
- `"phing wp-install-only"` Creates just WordPress (will not create the database)
- `"phing wp-zip"`          Creates a zip
- `"phing wp-gzip"`         Creates a gzip
- `"phing wp-doc"`          Runs PHP Documentor 2
- `"phing wp-min-js"`       Minify JS
- `"phing wp-ftp"`          FTP upload
- `"phing help"`            Command line options

Commands are chainable , for example `"phing wp-install wp-gzip"`   

The build will not overwrite existing directories or existing databases.  
The file/dir permissions (chown)  are commented out by default to prevent issues on windows

##Requires

PHP 5.2 + & Phing.

Phing is already included in most default PHP installs. If you need to install it separately see "Install" below.

 - PHP Documentor 2 requires the latest  Phing and the XSL PHP extension. You should also us the latest build found here: http://www.phpdoc.org/
 - FTP requires Net_FTP http://pear.php.net/package/Net_FTP/redirected

##Notes

If there are problems during install you can run WordPhing in debug and verbose modes or both.

For example: `"phing install -verbose -debug"`


##Todo

- Add git & svn support
- Add Rsync support
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

Thanks to: https://github.com/etivite/phing-wordpress-installer/ 

Why Phing? Because it's built with PHP.
https://github.com/phingofficial/phing