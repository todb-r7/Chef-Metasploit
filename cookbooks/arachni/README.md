Description
===========

Installs and configures the [Arachni](http://arachni-scanner.com/)
web application security scanner framework.

Requirements
============

## Platforms:

* Ubuntu

Usage
=====

The default recipe installs arachni to /opt/arachni:

    { "run_list": ["recipe[arachni]"] }

Recipes
=======

default
-------

* Installed to /opt/arachni
* Installed for user `msbuilder`
* Run with /opt/arachni/bin/arachni
