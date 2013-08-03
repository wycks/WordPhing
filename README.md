WordPhing
=========

WordPress build script using [Phing](http://www.phing.info/).

- Automated installing and working with WordPress.
- Simple config file and commands to run


*Phing has no dependencies other than PHP, so it will run anywhere PHP does (unlike Apache Ant/Cappicino/Rails/Grunt/, etc). It should work right out of the box on most PHP stacks. Some of the advanced options might require additional installations of PHP/PEAR packages*

## Features

**Installation**

- Creation of a new database (optional)
- Downloads and installs WordPress (latest stable or nightly)
- Download and installs plugins and/or themes (http transfer / zip format)
- Appends info to your wp-config automatically
- Runs the WP install script (by-passes the 5 minute install)
- Custom install parameters (optional via `boot.php`)

**Build Automation:**

- SQL Export
- Git
- PHP Documentor 2
- FTP 
- Minify js
- Zips or Gzips 

**Runtime Automation:**

- Allows you to run scripts on a WordPress install (optional via `run.php`), 
	- For example: delete 1000 posts belonging to a category.
	- Still in *beta* please do not run on live site

##Basic Usage

WordPhing is meant to be a base script to install and work with WordPress. Phing makes it easy to tailored the build script for each individual person's or company's development process.

It is painless to add any command line execution you want into the build file, use a built in [Phing Task](http://www.phing.info/docs/guide/stable/) or extend the code to include your own [Tasks](http://www.phing.info/docs/guide/stable/chapters/ExtendingPhing.html).

Since Phing is build with PHP it makes working with the build files easier for developers who are used to PHP syntax and operations.

##Basic Instructions

Open build.properties and fill it out and also read the comments:)

Main Command options

- `"phing wp-install"`         Creates a database and installs WordPress
- `"phing wp-install-only"`    Installs just WordPress (will not create the db)
- `"phing wp-clean-all"`       Deletes WP directory and database 
- `"phing wp-doc"`             Runs PHP Documentor 2
- `"phing wp-run"`             Runs custom script on WP
- `"phing help"`               Command line options

Move Commands      

- `"phing wp-ftp"`             FTP upload - commented out by default
- `"phing wp-db-dump"`         Export DB *.sql
- `"phing wp-direct-move"`     ..not tested yet    
- `"phing wp-ssh-move"`        ..not tested yet

Git Commands

- `"phing wp-git-init"`        Initialize a git repo
- `"phing wp-git-commit"`      Prompts for a commit msg - also takes commit options (-A for example)     
- `"phing wp-git-clone"`, `"phing wp-git-pull"`, `"phing wp-git-push"`, `"phing wp-git-branch"`    


Other Commands

- `"phing wp-min-js"`          Minify JS
- `"phing wp-zip"`             Creates a zip from directory
- `"phing wp-zip-file"`        Creates a zip from file
- `"phing wp-gzip"`            Creates a gzip
- `"phing wp-gzip-file"`       Creates a gzip from a file
- `"phing wp-clean-files"`     Deletes WP files
- `"phing wp-clean-database"`  Deletes WP Database


Commands are chainable , for example `"phing wp-install wp-git-init"`   

 
##Advanced Instructions


-  `boot.php` can be run during the install process to customize installation.
-  `run.php` can be run via the `phing wp-run` command on an existing WordPress install

Both files are run from the WordPhing build file root and not the WordPress install root and require `build.properties` to be properly filled out. You can change the location to to run from the WordPress root in `build.xml`. 


##Notes

The file/dir permissions (`chown/chmod`)  are commented out by default to prevent issues on Windows ( see line 567 in build.xml to uncomment).

If there are problems during install you can run WordPhing in debug and verbose modes or both.
For example: `"phing wp-install -verbose -debug"`

The install build will not overwrite existing directories or existing databases. It will also Delete the readme.html and wp-sample-config.php

##Reports

PHP reports (PhpCodeSniffer, Copy-Paste detection and PHPMess) have been removed from WordPhing and left in /codesniffing. It was getting to complicated and I think this is better handled by an IDE.

##Requires

PHP 5.2 + & Phing.

 - PHP Documentor 2 requires the latest Phing and the XSL PHP extension. You should use the latest build found here: [http://www.phpdoc.org/](http://www.phpdoc.org/)
 - FTP requires Net_FTP [http://pear.php.net/package/Net_FTP](http://pear.php.net/package/Net_FTP) 

##Todo

- Whole site migration
- SVN support
- Add backups via Rsync and Amazon
- Better CSS/JS minify via node, java or ruby?

##Install 

First check in your PHP/PEAR folder to see if /Phing is alredy there. For the latest release it's recommend you run `"pear upgrade phing/phing"`.

This script will eventually might require some optional libraries , so you can run `"pear install --alldeps phing/phing"` to get them.

- If PEAR/phing is not included in your stack.

http://www.phing.info/docs/guide/stable/chapters/Setup.html#SystemRequirements

- PEAR package

http://pear.phing.info/

Why Phing? Because it's built with PHP.
https://github.com/phingofficial/phing