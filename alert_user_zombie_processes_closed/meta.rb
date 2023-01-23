template :alert_user_zombie_processes_state do
  label 'Alert on too many zombie processes resolved'
  user_visibility true

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     'Re: [vpsFree.cz] VPS #<%= @event.object.id %>: vysoký počet zombie procesů'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     'Re: [vpsFree.cz] VPS #<%= @event.object.id %>: too many zombie processes'
  end
end
