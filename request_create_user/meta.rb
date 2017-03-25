template :request_action_role do
  label 'Request create (user)'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] Požadavek přijat'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] Request accepted'
  end
end
