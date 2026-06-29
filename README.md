# vpsFree.cz notification templates for vpsAdmin

This repository contains notification templates for vpsAdmin used at
[vpsFree.cz](http://www.vpsfree.cz). It contains protocol-specific templates
for e-mail and Telegram notification delivery.

The flake package exposes the `templates/` tree for managed vpsAdmin
deployments. vpsAdmin installs managed templates with its API rake task and a
source id, so unchanged redeploys do not rewrite database templates.

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
    en.html.erb
```

Telegram `*.text.erb` files are required as the fallback body. Telegram
`*.html.erb` files are optional rich bodies sent by vpsAdmin with Telegram HTML
parse mode when supported.

## Checks

Run the local syntax and Telegram HTML check before committing:

    $ bundle exec rake check

## Installation

Managed deployments should consume this repository as a flake input and pass
the package to vpsAdmin. For a manual install from a checked-out tree, run the
API task from a vpsAdmin API environment:

    $ TEMPLATE_PATH=/path/to/vpsfree-notification-templates \
      SOURCE_ID=manual-$(git rev-parse --short HEAD) \
      bundle exec rake vpsadmin:notification_templates:install_managed
