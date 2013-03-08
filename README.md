WordPhing
=========

WordPress build script using [Phing](http://www.phing.info/).

- Automated installing and working with WordPress.
- Simple config file and commands to run


*Phing has no dependencies other than PHP, so it will run anywhere PHP does (unlike Apache Ant/Cappicino/Rails, etc). It should work right out of the box on most lamp stacks.

*Some of the advanced options might require additional installations of PHP/PEAR packages*

## Features

**Installation Automation:**

- Creation of a new database (optional)
- Downloads and installs WordPress (latest stable)
- Download and installs plugins and/or themes
- Appends needed info to your wp-config
- Runs the WP install script (by-passes the 5 minute install).
- Runs any custom install parameters (optional via `boot.php`)

**Build Automation:**

- PHP CodeSniffer and Reporting
- PHP Documentor 2
- FTP
- Minify js
- Zips or Gzips 

**Runtime Automation:**

- Allows you to run scripts on a WordPress install, 
    - For example: delete 1000 posts belonging to a category,  see `run.php` for example
    - Still in *beta* please do not run on live site

##Basic Instructions

Open build.properties and fill it out and also read the comments:)

Main Command options

- `"phing wp-install"`      Creates a database and WordPress
- `"phing wp-install-only"` Creates just WordPress (will not create the database)
- `"phing wp-clean-all"`    Deletes directory and database 
- `"phing wp-db-dump"`      Export DB *.sql  
- `"phing wp-reports"`      Run CodeSniffer, PHP Mess Detector, Copy-Paste Detector
- `"phing wp-doc"`          Runs PHP Documentor 2
- `"phing help"`            Command line options


Lesser Commands

- `"phing wp-ftp"`             FTP upload
- `"phing wp-run"`             Runs custom WP friendly script
- `"phing wp-min-js"`          Minify JS
- `"phing wp-zip"`             Creates a zip from directory
- `"phing wp-zip-file"`        Creates a zip from file
- `"phing wp-gzip"`            Creates a gzip
- `"phing wp-gzip-file"`       Creates a gzip from a file
- `"phing wp-clean-files"`     Deletes WP files
- `"phing wp-clean-database"`  Deletes WP Database
- `"phing wp-sniff"`           Runs CodeSniffer
- `"phing wp-cpd"`             Copy-Paste Detector
- `"phing wp-mess"`            PHP Mess Detector


Commands are chainable , for example `"phing wp-install wp-gzip wp-ftp"`   

 
##Advanced Instructions


-  `boot.php` can be run during the install process to customize installation.
-  `run.php` can be run via the `phing wp-run` command on an existing WordPress install

Both files are run from the WordPhing build file root and not the WordPress install root and require `build.properties` to be properly filled out. You can change the location to to run from the WordPress root in `build.xml`. 

##Reports

WordPhing contains 3 reports: 

- CodeSniffer
- PHP Copy-Paste Detector
- PHP Mess Detector

You can run 3 reports using `"phing wp-reports"`.

- CodeSniffer will automatically output XML reports into HTML for easier reading :smile:

 It is recommend you install https://github.com/mrchrisadams/WordPress-Coding-Standards as this is the default setting for WordPhing and not included in the PEAR package. Output looks like [this](https://raw.github.com/wycks/CodeSnifferToHTML/master/screenshot.jpg)

*Without `WordPress-Coding-Standards` installed it might revert to default PEAR coding standards.. not sure..*

- Copy-Paste Detector requires: [https://github.com/sebastianbergmann/phpcpd](https://github.com/sebastianbergmann/phpcpd)
- PHP Mess Detector requires [https://github.com/phpmd/phpmd](https://github.com/phpmd/phpmd)

*Copy-Paste Detector output is in XML, until XSLT parser is fixed*

##Notes

The file/dir permissions (`chown`)  are commented out by default to prevent issues on Windows ( see line 457 in build.xml for reference).

If there are problems during install you can run WordPhing in debug and verbose modes or both.
For example: `"phing wp-install -verbose -debug"`

The install build will not overwrite existing directories or existing databases. It will also Delete the readme.html and wp-sample-config.php


##Requires

PHP 5.2 + & Phing.

 - PHP Documentor 2 & Codesniffer requires the latest Phing and the XSL PHP extension. You should use the latest build found here: [http://www.phpdoc.org/](http://www.phpdoc.org/)
 - FTP requires Net_FTP [http://pear.php.net/package/Net_FTP](http://pear.php.net/package/Net_FTP)


##Todo

- Database dump + whole site migration
- Maybe Add git & svn support
- Add backups via Rsync and Amazon
- CSS minify (yui-compress) requires java :( switch js to yui as well since php one is depreciated.
- Staging and continuous integration?


##Install 

It is recommend you run `"pear upgrade phing/phing"` for the latest release.

This script will eventually require some optional libraries (http, git, svn, amazon, etc), so you can run `"pear install --alldeps phing/phing"` to get them.

- Seperate install if pear/phing is not included in your stack.

http://www.phing.info/docs/guide/stable/chapters/Setup.html#SystemRequirements

- PEAR package

http://pear.phing.info/

Why Phing? Because it's built with PHP.
https://github.com/phingofficial/phing