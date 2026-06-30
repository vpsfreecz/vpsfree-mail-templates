# Repository Guidelines

## Project Structure & Module Organization

Templates for vpsAdmin live in `templates/<name>/` snake_case directories, such
as `templates/user_create/`, `templates/vps_network_enabled/`, or
`templates/alert_user_diskspace_closed_primary/`.

Each directory contains `meta.rb` for the template id, label, visibility, and
protocol defaults. Protocol-specific ERB files live under `email/` and
`telegram/`, for example `email/en.subject.erb`, `email/en.text.erb`,
`email/en.html.erb`, `telegram/en.text.erb`, and optional
`telegram/en.html.erb`. Telegram text templates are required as fallbacks for
the HTML body. There is no `src/`, `test/`, or asset tree.

## Build, Test, and Development Commands

- `nix develop`: enters the Ruby 3.4 shell and installs dependencies in `.gems`.
- `bundle install`: installs Ruby dependencies.
- `bundle exec rake check`: checks ERB syntax and literal Telegram HTML tags.
- The flake package exposes the `templates/` tree. Install managed templates
  from a vpsAdmin API environment with
  `bundle exec rake vpsadmin:notification_templates:install_managed`, setting
  `TEMPLATE_PATH` or `TEMPLATE_PATHS` and `SOURCE_ID`.

## Coding Style & Naming Conventions

Follow `.editorconfig`: UTF-8, LF line endings, trimmed whitespace, and 2-space
indentation for `.rb` and `.erb` files. Name new template directories in
snake_case, such as `dataset_migration_finished`.

Keep `meta.rb` consistent with existing `template do` and `protocol :email`
blocks. In templates, use `<%= ... %>` interpolation and readable text wrapping.
Update relevant localized protocol files together, especially
`email/*.subject.erb` and `email/*.text.erb`.

## Language & Communication Style

User-facing mails are factual, calm, and action-oriented. English starts with
`Hi <login>,` and closes with `Best regards,` then `vpsFree.cz team`. Czech
starts with `Ahoj <login>,`, uses informal singular address (`Ty`, `Ti`,
`Tvoje`), and closes with `S pozdravem`, then `tým vpsFree.cz`.

State the event or problem first, then give details, action links, and KB
references. Use `please`/`prosím` for requests, avoid marketing language, and
preserve the automated-mail footer wording. Admin templates can be terse, using
tables, lists, and direct action links.

## Testing Guidelines

There is no standalone unit test suite. Run `bundle exec rake check` and inspect
rendered ERB syntax visually when content changes. Managed installation is
validated from vpsAdmin's API task and deployment checks.

## Commit & Pull Request Guidelines

Use short imperative subjects, often scoped by template name, for example
`vps_incident_report: add VPS action information`. Keep unrelated template
changes separate. Limit every commit message line to 80 characters or less. For
multi-line messages, write the message in a temporary file and commit with
`git commit -F /tmp/message-file`; avoid interactive editor cleanup.

Pull requests should name affected directories, explain user-visible changes,
and note managed-install or deployment validation. Include rendered previews
for `.html.erb` changes.

## Security & Configuration Tips

Do not commit API credentials, rendered mails containing personal data, or local
`.gems` content. For manual managed installs, use an explicit `SOURCE_ID` that
identifies the template source revision.
