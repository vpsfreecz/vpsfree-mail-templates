template :alert_role_event_state do
  label 'DNS secondary transfer failure resolved'
  user_visibility true

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] DNS zóna <%= @object.dns_zone.name %>: sekundární přenos obnoven'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] DNS zone <%= @object.dns_zone.name %>: secondary transfer recovered'
  end
end
