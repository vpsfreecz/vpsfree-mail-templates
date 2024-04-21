template do
  label 'VPS replaced'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] VPS #<%= @original_vps.id %> nahrazeno s VPS #<%= @new_vps.id %>'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] VPS #<%= @original_vps.id %> replaced by VPS #<%= @new_vps.id %>'
  end
end
