# vpsFree.cz specific mail templates for vpsAdmin

This repository contains mail templates for vpsAdmin used at
[vpsFree.cz](http://www.vpsfree.cz). After editing, the templates must be
installed (sent to the API) using
[vpsadmin-mail-templates](https://github.com/vpsfreecz/vpsadmin-mail-templates).

## Installation

Templates can be installed by ivoking `vpsadmin-mail-templates` directly
or by using `rake`.

The user name and password is prompted on stdin if it is not set.

For example:

    $ vpsadmin-mail-templates https://api.vpsfree.cz install

or

    $ rake API=https://api.vpsfree.cz

Rake task accepts several variables:

 - `API` - the URL of the API to upload templates to
 - `USERNAME`
 - `PASSWORD`
