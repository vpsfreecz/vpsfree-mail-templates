template :alert_role_event_state do
  label 'Unpaid data flow alert closed'

  protocol :email do
    from        'vpsadmin@vpsfree.cz'
  end
end
