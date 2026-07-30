template :outage_report_generic_update do
  label 'Generic outage report update'
  user_visibility false

  protocol :email do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
  end
end
