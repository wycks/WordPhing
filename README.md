WordPhing
=========

###WordPress build and test system using Phing. 
This is Beta, use at your own risk.

- Automated Installing/Moving/Testing/Scripting and PHP'ing for WordPress from the command line.
- Currently works and builds WordPress in about 25 seconds depending on your Internet connection.

##Basic Instructions

- Put the 2 files where you want to build wordpress, most likely in your htdoc folder
- Open build.properties and set `build.dir.wp= "your folder"`
- Make sure "your folder" is an empty folder! For example "buildwp/test".
- Open a cli and mozy on over to your folder
- Type "phing install"
- Type what it asks you


##Requires

PHP 5.2 + & PEAR & Phing

##Install Phing
http://www.phing.info/docs/guide/stable/chapters/Setup.html#SystemRequirements

It is recommended to use the latest version of Phing
This script REQUIRES some optional libraries (http, git, svn, etc).
Intall them all via `"install [--alldeps] phing/phing"`,  why not.


##

This is a fork of: https://github.com/etivite/phing-wordpress-installer/ to make it prompt friendly and add new features.
If you just want to use config files, use the above instead.

Why Phing? Because it's built with PHP.
https://github.com/phingofficial/phing


