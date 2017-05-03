template :alert_role_diskspace_state_pool do
  label 'Alert on low diskspace of NAS datasets'
  user_visibility true

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] NAS <%= @ds.full_name %>: zabráno více než 90 % disku'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] NAS <%= @ds.full_name %>: used more than 90 % of disk space'
  end
end
