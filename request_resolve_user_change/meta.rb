template :request_action_role_type do
  label 'Request change resolve (user)'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     'Re: [vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] Požadavek přijat'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     'Re: [vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] Request accepted'
  end
end
