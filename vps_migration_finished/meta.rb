template do
  label 'VPS migration finished'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] Migrace VPS #<%= @vps.id %> na <%= @dst_node.domain_name %> byla dokončena'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] Migration of VPS #<%= @vps.id %> to <%= @dst_node.domain_name %> was finished'
  end
end
