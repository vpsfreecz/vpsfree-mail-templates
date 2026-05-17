# Repository Guidelines

## Project Structure & Module Organization

Templates for vpsAdmin live in top-level snake_case directories, such as
`user_create/`, `vps_network_enabled/`, or
`alert_user_diskspace_closed_primary/`.

Each directory contains `meta.rb` for the label, sender addresses, and localized
subjects. Bodies are localized ERB files such as `en.plain.erb`,
`cs.plain.erb`, `en.html.erb`, or `cs.html.erb`. There is no `src/`, `test/`,
or asset tree.

## Build, Test, and Development Commands

- `nix-shell`: enters the Ruby 3.3 shell and installs dependencies in `.gems`.
- `bundle install`: installs Ruby dependencies.
- `bundle exec rake test API=https://api.example`: checks API authentication.
- `bundle exec rake install API=https://api.example`: uploads templates.
- `bundle exec vpsadmin-mail-templates https://api.example install`: uploads
  without Rake.

## Coding Style & Naming Conventions

Follow `.editorconfig`: UTF-8, LF line endings, trimmed whitespace, and 2-space
indentation for `.rb` and `.erb` files. Name new template directories in
snake_case, such as `dataset_migration_finished`.

Keep `meta.rb` consistent with existing `template do` and `lang :en/:cs` blocks.
In templates, use `<%= ... %>` interpolation and readable plain-text wrapping.
Update relevant localized files together, especially subjects in `meta.rb`.

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

There is no standalone unit test suite. Check rendered ERB syntax visually, then
run `bundle exec rake test API=...` before uploading. For changed templates,
prefer staging with `bundle exec rake install API=...` before production.

## Commit & Pull Request Guidelines

Use short imperative subjects, often scoped by template name, for example
`vps_incident_report: add VPS action information`. Keep unrelated template
changes separate. Limit every commit message line to 80 characters or less. For
multi-line messages, write the message in a temporary file and commit with
`git commit -F /tmp/message-file`; avoid interactive editor cleanup.

Pull requests should name affected directories, explain user-visible changes,
and note upload or authentication testing. Include rendered previews for
`.html.erb` changes.

## Security & Configuration Tips

Do not commit API credentials, rendered mails containing personal data, or local
`.gems` content. Use explicit `API=...` values so uploads go to the intended
environment.
