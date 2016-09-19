# icinga2

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with icinga2](#setup)
    * [What icinga2 affects](#what-icinga2-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with icinga2](#beginning-with-icinga2)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This Puppet Module will install Icinga2 with Icingaweb2 Interface and MySQL as backend DB. This Module is valid for Ubuntu 14.x , Ubuntu 15.x and CentOS 6.x

## Module Description

This Module will help you install Icingaweb2 and enable monitoring across several devices.
As I was not able to find the Icingaweb2 all in on module, so myself decided to make it. As of now it only works for Ubuntu 14.x and 15.x but I am in process to make CentOS & RedHat very s
oon.

This module doesn't have much functionality and will only install the Icinga2 Core and icingaw Web2  with latest verion  .
## Setup


### What icinga2 affects

This requires a Fresh system where no instances of Icinga2, Icingaweb2 or MySQL should be present. It will be able to install it properly, hence clean the whole system first.

### Setup Requirements **OPTIONAL**

Before installing kindly download the Stdlib and VCSREPO module for cloning the Git Repo.

### Beginning with icinga2

The very basic steps needed for a user to get the module up and running.

If you are interested in Git latest work you can reach to the Git Repo of Icinga official

:https://github.com/Icinga/icingaweb2/blob/master/doc/installation.md

After Installation, the web interface can viewed from http://yourhostip/icingaweb2

The credentails are username : icingaadmin	& 	password:icingaadmin

## Usage

Just include the icinga2 class on the Puppet Server and you are to good to install further.

 class {'icinga2':}

Post Installation - update the parameter " date.timezone = '' " " in "/etc/php.ini"  .

Restart Apache Service and Icinga2 Service.

Example : date.timezone = 'Asia/Kolkata'

## Reference

Here are some of the Classes which are working in background :
icinga.pp :   Installs the core icinga2.
mysql.pp  :   Install the MySQL and configures it.
icingaweb2.pp : Install and configure icingweb2 and MySQL


## Limitations

Since this is initial version, hence it's only limited to Ubuntu 14.x and 15.x and will install the latest Icinga2 and Icingaweb2 Versions.

## Development

For any development, you my reach out to the GitHub repo : github.com/smitjainsj/icinga2

## Contribution

For any  contribution, you may mail me at smitjain1990@gmail.com
