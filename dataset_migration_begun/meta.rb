template do
  label 'Dataset migration begun'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] Dataset <%= @dataset.full_name %> bude přesunut <%= @src_pool.node_id == @dst_pool.node_id ? "z poolu #{@src_pool.name} na pool #{@dst_pool.name}" : "na #{@dst_pool.node.domain_name}" %>'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] Dataset <%= @dataset.full_name %> will be transferred <%= @src_pool.node_id == @dst_pool.node_id ? "from pool #{@src_pool.name} to #{@dst_pool.name}" : "to #{@dst_pool.node.domain_name}" %>'
  end
end
