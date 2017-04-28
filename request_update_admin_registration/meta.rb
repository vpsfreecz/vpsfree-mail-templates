template :request_action_role_type do
  label        'Registration request update (admin)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'
  subject      'Re: [vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] <%= @r.full_name %>'
end
