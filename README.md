# vpsFree.cz notification templates for vpsAdmin

This repository contains notification templates for vpsAdmin used at
[vpsFree.cz](http://www.vpsfree.cz). It contains protocol-specific templates
for e-mail and Telegram notification delivery.

After editing, the templates must be installed (sent to the API) using the
vpsAdmin notification template uploader.

## Layout

Templates live in `templates/<name>/`. Each template has `meta.rb` for the
template id, label, visibility, and protocol defaults. Protocol bodies live in
subdirectories:

```text
templates/user_create/
  meta.rb
  email/
    en.subject.erb
    en.text.erb
    en.html.erb
  telegram/
    en.text.erb
```

## Installation

Templates can be installed by invoking `vpsadmin-notification-templates`
directly, or by using `rake`.

The user name and password is prompted on stdin if it is not set.

For example:

    $ vpsadmin-notification-templates https://api.vpsfree.cz install

or

    $ rake API=https://api.vpsfree.cz

Rake task accepts several variables:

 - `API` - the URL of the API to upload templates to
 - `INSTALLER` - uploader command, defaults to `vpsadmin-notification-templates`
 - `USERNAME`
 - `PASSWORD`
