template :alert_role_event_state do
  label        'Monthly traffic alert closed'
  from         'vpsadmin@vpsfree.cz'
  subject      'Re: User monthly traffic too high: user <%= @event.object.id %> <%= @event.object.login %> - <%= (@event.monitored_event_logs.last.value / 1024 / 1024 / 1024 / 1024).round(2) %> TiB'
end
