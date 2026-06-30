template :outage_report_role_event do
  label 'Generic outage report announcement'
  user_visibility false

  protocol :email do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
  end
end
