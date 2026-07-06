template :alert_unpaid_data_flow_closed do
  label 'Unpaid data flow alert closed'

  protocol :email do
    from        'vpsadmin@vpsfree.cz'
  end
end
