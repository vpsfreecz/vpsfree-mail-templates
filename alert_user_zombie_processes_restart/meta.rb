template :alert_user_zombie_processes_restart do
  label 'Planned VPS restart due to too many zombie processes'
  user_visibility true

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] Naplánovaný restart VPS #<%= @event.object.id %> (zombie procesy)'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] Scheduled restart of VPS #<%= @event.object.id %> (zombie processes)'
  end
end
