template :alert_role_diskspace_state_pool do
  label 'Alert on low diskspace of NAS datasets'
  user_visibility true

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] NAS <%= @ds.full_name %>: zbývá <%= @event.monitored_event_logs.last.value.round(2) %> % volného místa'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] NAS <%= @ds.full_name %>: <%= @event.monitored_event_logs.last.value.round(2) %> % of disk space left'
  end
end
