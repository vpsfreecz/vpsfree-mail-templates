template do
  label 'VPS incident report'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] Upozornění #<%= @incident.id %> pro VPS #<%= @vps.id %>: <%= @incident.subject %>'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] Incident report #<%= @incident.id %> for VPS #<%= @vps.id %>: <%= @incident.subject %>'
  end
end
