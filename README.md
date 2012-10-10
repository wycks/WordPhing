WordPhing
=========

WordPress build using Phing.

- Automated Installing WordPress from the command line (install script).
- Currently builds WordPress in about 30 seconds depending on your Internet connection and how many plugins/themes you include.
- Simple config file and command to run

If you want something that has a lot more features please check out WP-CLI.
https://github.com/wp-cli/wp-cli

Video: http://www.youtube.com/watch?feature=player_embedded&v=Y5eFQwgkgh4

*Phing has no dependencies other than PHP, so it will run anywhere PHP does (unlike Apache Ant/Cappicino/Rails, etc). It should work right out of the box (the default PEAR folder in most PHP installs already includes it)*


## What does it do?

- Creates a new database (optional)
- Downloads and installs WordPress (latest stable)
- Download and installs plugins and themes
- Appends needed info to your wp-config
- Runs the WP install script

Some minor changes are made during install, they are;

- Removes Hello Dolly plugin (sry Matt).
- Removes default "Hello World" post, Sample Page, Links.
- Removes default Mr.Wordpress comment.


##Basic Instructions

- Put the 2 files where you want to build WordPress, most likely in your stack root folder
- Open build.properties and fill it out

2 Install options
- Type `"phing install"`    Creates a database and WordPress
- Type `"phing install-wp"` Creates just WordPress (will not create the database)

**Important** The `build.dir.wp` and `build.dir.tmp` in the build.properies will overwrite anything existing in those folders upon build without warning (will fix ).

##Requires

PHP 5.2 + & Phing (with HTTP_Request2).

Phing and HTTP_Request2 are already included in most default PHP installs. If you need to install seperatly see "Install" below.

##Notes

If there are problems during install you can run WordPhing in debug and verbose modes or both.

For example: `"phing install -verbose -debug"`


##Todo

- Fix git & svn support
- Add FTP support
- Theme minify (yui-compress and google closure)
- Moving, staging and backups (phing even has an amazon task)
- Run some tests (phpunit, phpmess)

##Install 

- Seperate install if pear/phing is not included in your stack.

http://www.phing.info/docs/guide/stable/chapters/Setup.html#SystemRequirements

It is recommended to have the latest version of Phing
This script REQUIRES some optional libraries (http, git, svn, etc).
Intall them all via `"install [--alldeps] phing/phing"`


Thanks to: https://github.com/etivite/phing-wordpress-installer/ 

Why Phing? Because it's built with PHP.
https://github.com/phingofficial/phing





