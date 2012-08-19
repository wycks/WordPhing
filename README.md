WordPhing
=========

WordPress build and test system using Phing, this is Beta, use at your own care.

- Automated Installing/Moving/Testing/Scripting and PHP'ing WordPress from the command line
- Currently works and builds WordPress in about 25 seconds depending on your Internet connection.

##Basic Instructions

- Put the 2 files where you want to build wordpress, most likely in a htdoc folder
- Open build.properties and set build.dir.wp= "your folder"
- Make sure "your folder" is an empty folder! For example "buildwp/test". This will be fixed soon not override without a warning.
- Open folder on cli
- Type "phing install"




This is a fork of: https://github.com/etivite/phing-wordpress-installer/ to make it prompt freindly. 
If you just want config files use the above instead until I add new features:)

Why Phing? Because it's built with PHP.
https://github.com/phingofficial/phing


