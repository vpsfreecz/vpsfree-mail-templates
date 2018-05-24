template :request_action_role do
  label        'Request resolve (admin)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'
  subject      'Re: [vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] <%= @r.state %>'
end
