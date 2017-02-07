template :request_resolve_user_type do
  label        'Request change resolve (user)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'

  lang :cs do
    subject    'Re: [vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] Požadavek přijat'
  end

  lang :en do
    subject    'Re: [vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] Request accepted'
  end
end
