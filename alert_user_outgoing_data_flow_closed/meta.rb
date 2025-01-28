template :alert_role_event_state do
  label 'Outgoing data flow alert resolved'
  user_visibility true

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     'Re: [vpsFree.cz] VPS #<%= @event.object.id %>: vysoký tok odchozích dat'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     'Re: [vpsFree.cz] VPS #<%= @event.object.id %>: high outgoing data flow'
  end
end
