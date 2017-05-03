template :alert_role_event_state do
  label        'Unpaid data flow alert closed'
  from         'vpsadmin@vpsfree.cz'
  subject      'Re: Unpaid user data flow: VPS <%= @event.object.id %> on <%= @event.object.node.domain_name %>'
end
