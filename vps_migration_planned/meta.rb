template do
  label 'VPS migration planned'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] VPS #<%= @vps.id %> bude přesunuto na <%= @dst_node.domain_name %>'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] VPS #<%= @vps.id %> will be migrated to <%= @dst_node.domain_name %>'
  end
end
