template do
  label 'Dataset migration finished'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] Přesun datasetu <%= @dataset.full_name %> na <%= @src_pool.node_id == @dst_pool.node_id ? @dst_pool.name : @dst_pool.node.domain_name %> byl dokončen'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] The transfer of dataset <%= @dataset.full_name %> to <%= @src_pool.node_id == @dst_pool.node_id ? @dst_pool.name : @dst_pool.node.domain_name %> was finished'
  end
end
