template :outage_report_role_event do
  label           'Generic outage report announcement'
  from            'podpora@vpsfree.cz'
  reply_to        'podpora@vpsfree.cz'
  return_path     'podpora@vpsfree.cz'
  user_visibility false

  lang :en do
    subject    "<%= @o.planned_outage? ? 'Odstávka / Planned outage' : 'Výpadek / Unplanned outage' %> - <%= @o.outage_entities.map { |e| e.real_name }.join(', ') %> - <%= local_time(@o.begins_at, '%Y-%m-%d %H:%M %Z') %>"
  end
end
