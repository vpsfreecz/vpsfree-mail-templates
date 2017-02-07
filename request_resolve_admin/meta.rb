template :request_resolve_admin do
  label        'Request resolve (admin)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'
  subject      'Re: [vpsAdmin Request #<%= @r.id %> <%= @r.type_name %>] <%= (@r.user && @r.user.full_name) || @r.full_name %> - <%= @r.state %>'
end
