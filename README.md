WordPhing
=========

WordPress build and test system using Phing, this is beta

- Automated Installing/Moving/Testing/Scripting and PHP'ing WordPress from the command line
- Currently works and builds WordPress in about 30 seconds depending on your Internet connection.


*Phing has no dependencies other than PHP, so it will run anywhere PHP does (unlike Apache Ant/Cappicino/Rails, etc).*


## What does it do?

- Creates a new database
- Downloads and installs WordPress (latest stable)
- Download and installs plugins
- Appends needed info to your wp-config

##Basic Instructions

- Put the 2 files where you want to build WordPress, most likely in your stack root folder
- Open build.properties and fill it out
- Type `"phing install"`    Create a database and WordPress
- Type `"phing install-wp"` Create just WordPress (will not create the database)

**Important** The `build.dir.wp` and `build.dir.tmp` in the build.properies will overwrite anything existing in those folders upon build without warning (will fix ).


##Notes

The folder "Prompt" is another working version that adds "prompts" to the command line instead of using a config file.
For example it will ask you for the name of the db you want to create, turn on debug, etc. I'm not keeping it as up to date as the config version.

Todo

- Fix git & svn support
- Add FTP support
- Test Theme installs
- Theme minify (yui-compress and google closure)
- Moving, staging and backups (phing even has an amazon task)
- Run some crazy tests (phpunit, phpmess)
- Eliminate the WordPress setup script (title, admin login, email)
- Interact directly with wp code

##Requires

PHP 5.2 + & Phing

##Install
http://www.phing.info/docs/guide/stable/chapters/Setup.html#SystemRequirements

It is recommended to have the latest version of Phing
This script REQUIRES some optional libraries (http, git, svn, etc).
Intall them all via `"install [--alldeps] phing/phing"`


##

Thanks to: https://github.com/etivite/phing-wordpress-installer/ 

Why Phing? Because it's built with PHP.
https://github.com/phingofficial/phing





