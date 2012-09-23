WordPhing
=========

Beta of a WordPress build and test system using Phing.

- Automated Installing/Moving/Testing/Scripting and PHP'ing WordPress from the command line.
- Currently works and builds WordPress in about 30 seconds depending on your Internet connection and how many plugins you include.


*Phing has no dependencies other than PHP, so it will run anywhere PHP does (unlike Apache Ant/Cappicino/Rails, etc). It should work right out of the box (default PEAR folder in most PHP installs already includes it)*


## What does it do?

- Creates a new database
- Downloads and installs WordPress (latest stable)
- Download and installs plugins and themes
- Appends needed info to your wp-config
- Runs the WP install script


##Basic Instructions

- Put the 2 files where you want to build WordPress, most likely in your stack root folder
- Open build.properties and fill it out

2 Install options
- Type `"phing install"`    Creates a database and WordPress
- Type `"phing install-wp"` Creates just WordPress (will not create the database)

**Important** The `build.dir.wp` and `build.dir.tmp` in the build.properies will overwrite anything existing in those folders upon build without warning (will fix ).

##Requires

PHP 5.2 + & Phing

HTTP_Request2 (usually included in your PEAR install)

Phing and HTTP_Request are already included in most defualt php installs. If you need to install seperatly see below.


##Install
http://www.phing.info/docs/guide/stable/chapters/Setup.html#SystemRequirements

It is recommended to have the latest version of Phing
This script REQUIRES some optional libraries (http, git, svn, etc).
Intall them all via `"install [--alldeps] phing/phing"`


##Notes

If there are problems during install you can run WordPhing in debug and verbose modes or both.

For example: `"phing install -verbose -debug"`

Todo

- Fix the amdin login credentials to be configured via build.properties
- Fix git & svn support
- Add FTP support
- Theme minify (yui-compress and google closure)
- Moving, staging and backups (phing even has an amazon task)
- Run some crazy tests (phpunit, phpmess)


##

Thanks to: https://github.com/etivite/phing-wordpress-installer/ 

Why Phing? Because it's built with PHP.
https://github.com/phingofficial/phing





