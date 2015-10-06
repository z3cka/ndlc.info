# NDLC.info
## Requirements
* git
* Apache (or nginx)
* PHP 5.4+  
    **PHP Modules**:
    * gd (a graphics library used to manipulate images)
    * curl (client for URL handling used by GPM)
    * openssl (secure sockets library used by GPM)
    * mbstring (multibyte string support)
* [Grav](http://learn.getgrav.org/basics/requirements) <- _additional info on optional requirements and perms_

## Installation
1. Install Grav to webserver docroot
1. `cd <docroot> && rm -rf user && git clone git@github.com:UCLALibrary/ndlc.info.git user`
1. `bin/grav install`