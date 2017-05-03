template :alert_role_event_state do
  label        'Unpaid CPU overuse alert'
  from         'vpsadmin@vpsfree.cz'
  subject      'Unpaid user CPU overuse: VPS <%= @event.object.id %> on <%= @event.object.node.domain_name %>'
end
