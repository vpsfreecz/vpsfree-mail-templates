template :alert_monthly_traffic_closed do
  label 'Monthly traffic alert closed'

  protocol :email do
    from        'vpsadmin@vpsfree.cz'
  end
end
