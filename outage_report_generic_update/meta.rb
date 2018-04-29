template :outage_report_role_event do
  label           'Generic outage report update'
  from            'podpora@vpsfree.cz'
  reply_to        'podpora@vpsfree.cz'
  return_path     'podpora@vpsfree.cz'
  user_visibility false

  lang :en do
    subject    "Re: <%= @o.planned ? 'Odstávka / Maintenance' : 'Výpadek / Outage' %> - <%= @o.outage_entities.map { |e| e.real_name }.join(', ') %> - <%= @o.begins_at.localtime.strftime('%Y-%m-%d %H:%M %Z') %>"
  end
end
