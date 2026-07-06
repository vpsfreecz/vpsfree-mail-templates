template :alert_unpaid_data_flow_confirmed do
  label 'Unpaid data flow alert'

  protocol :email do
    from        'vpsadmin@vpsfree.cz'
  end
end
