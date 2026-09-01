template :outage_report_role_event do
  label           'Generic outage report update'
  from            'podpora@vpsfree.cz'
  reply_to        'podpora@vpsfree.cz'
  return_path     'podpora@vpsfree.cz'
  user_visibility false
end
