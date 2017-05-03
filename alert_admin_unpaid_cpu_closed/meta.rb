template :alert_role_event_state do
  label        'Unpaid CPU overuse alert closed'
  from         'vpsadmin@vpsfree.cz'
  subject      'Re: Unpaid user CPU overuse: VPS <%= @event.object.id %> on <%= @event.object.node.domain_name %>'
end
