template :alert_monthly_traffic_confirmed do
  label 'Monthly traffic alert'

  protocol :email do
    from        'vpsadmin@vpsfree.cz'
  end
end
