template do
  label        'Request change (admin)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'
  subject      '[vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] <%= @r.user.full_name %>'
end
