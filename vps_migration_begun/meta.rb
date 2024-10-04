template do
  label 'VPS migration begun'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] Právě začal přesun VPS #<%= @vps.id %> na <%= @dst_node.domain_name %>'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] We are moving VPS #<%= @vps.id %> to <%= @dst_node.domain_name %>'
  end
end
