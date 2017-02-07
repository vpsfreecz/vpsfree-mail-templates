template :request_create_user do
  label        'Request create (user)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'

  lang :cs do
    subject    '[vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] Požadavek přijat'
  end

  lang :en do
    subject    '[vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] Request accepted'
  end
end
