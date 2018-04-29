template :outage_report_role_event do
  label 'User outage report announcement'

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     "[vpsFree.cz] <%= @o.planned ? 'Maintenance' : 'Outage' %> - <%= @o.outage_entities.map { |e| e.real_name }.join(', ') %> - <%= @o.begins_at.localtime.strftime('%Y-%m-%d %H:%M %Z') %>"
  end

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     "[vpsFree.cz] <%= @o.planned ? 'Odstávka' : 'Výpadek' %> - <%= @o.outage_entities.map { |e| e.real_name }.join(', ') %> - <%= @o.begins_at.localtime.strftime('%Y-%m-%d %H:%M %Z') %>"
  end
end
