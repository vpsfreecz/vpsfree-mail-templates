template :request_action_role_type do
  label        'Request registration (admin)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'
  subject      '[vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] New application'
end
