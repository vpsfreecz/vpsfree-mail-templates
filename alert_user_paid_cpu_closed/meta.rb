template :alert_role_event_state do
  label 'Alert on CPU overuse resolved'
  user_visibility true

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     'Re: [vpsFree.cz] VPS #<%= @event.object.id %>: nadměrné využívání CPU'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     'Re: [vpsFree.cz] VPS #<%= @event.object.id %>: CPU overuse'
  end
end
