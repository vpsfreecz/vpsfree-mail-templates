template :alert_role_event do
  label        'Unpaid data flow alert'
  from         'vpsadmin@vpsfree.cz'
  subject      'Unpaid user data flow: VPS <%= @event.object.id %> on <%= @event.object.node.domain_name %>'
end
