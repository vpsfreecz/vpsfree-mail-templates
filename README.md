# vpsFree.cz notification templates for vpsAdmin

This repository contains the notification templates used by vpsFree.cz for
email, Telegram, and SMS delivery through vpsAdmin.

## Template structure

Each template has one metadata file and protocol-specific directories:

```text
templates/user_create/
├── meta.rb
├── email/
│   ├── cs.subject.erb
│   ├── cs.text.erb
│   ├── en.subject.erb
│   └── en.text.erb
├── sms/
│   ├── cs.text.erb
│   └── en.text.erb
└── telegram/
    ├── cs.text.erb
    ├── cs.html.erb
    ├── en.text.erb
    └── en.html.erb
```

`meta.rb` selects the vpsAdmin template type and sets properties shared by the
variants. Protocol blocks can set properties such as email sender addresses:

```ruby
template do
  label 'User created'

  protocol :email do
    lang :en do
      from 'support@example.com'
      reply_to 'support@example.com'
      return_path 'bounces@example.com'
    end
  end
end
```

The metadata file uses a small literal DSL. It is not general Ruby: keep values
as strings, symbols, or booleans and use only the documented `template`,
`protocol`, `lang`, and property declarations. Language codes are normalized
two-letter codes.

Name the variant files `<language>.subject.erb`, `<language>.text.erb`, and
`<language>.html.erb`. Each language needs a text or HTML body. Email variants
normally include a subject. Telegram text files provide a fallback for the
optional HTML body, while SMS variants use text bodies only.

## Checks

Run all flake checks before committing:

```shell
nix flake check
```

To check the working tree without building the package, run:

```shell
nix run .#check
```

The parser and checker come from the pinned vpsAdmin input, so this repository
does not need a separate Ruby toolchain or checker implementation.

## Use with vpsAdmin

Add this repository as a flake input and pass its package to the vpsAdmin NixOS
module:

```nix
{
  inputs.notificationTemplates = {
    url = "github:vpsfreecz/vpsfree-notification-templates";
    inputs.vpsadmin.follows = "vpsadmin";
  };

  # In a NixOS module with `inputs` and `pkgs` in scope:
  vpsadmin.api.notificationTemplates.source =
    inputs.notificationTemplates.packages.${pkgs.system}.default;
}
```

vpsAdmin overlays these templates on its built-in templates and reconciles the
effective set before starting the API. The template source is a build input;
there is no separate upload or installation command.
