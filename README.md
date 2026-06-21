# vpsFree.cz notification templates for vpsAdmin

This repository contains notification templates for vpsAdmin used at
[vpsFree.cz](http://www.vpsfree.cz). It currently contains e-mail templates;
the repository is being kept as the shared place for later Telegram and SMS
message templates as vpsAdmin notification delivery grows beyond e-mail.

After editing, the templates must be installed (sent to the API) using the
vpsAdmin template uploader. The compatible command name is still
`vpsadmin-mail-templates`; newer development shells also provide the generic
alias `vpsadmin-notification-templates`.

## Installation

Templates can be installed by invoking `vpsadmin-notification-templates` or
`vpsadmin-mail-templates` directly, or by using `rake`.

The user name and password is prompted on stdin if it is not set.

For example:

    $ vpsadmin-notification-templates https://api.vpsfree.cz install

or

    $ rake API=https://api.vpsfree.cz

Rake task accepts several variables:

 - `API` - the URL of the API to upload templates to
 - `INSTALLER` - uploader command, defaults to `vpsadmin-mail-templates`
 - `USERNAME`
 - `PASSWORD`
