template :request_action_role_type do
  label        'Request change (admin)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'
  subject      '[vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] User #<%= @r.user.id %>'
end
