template :alert_role_event_state do
  label 'Unpaid CPU overuse alert'

  protocol :email do
    from        'vpsadmin@vpsfree.cz'
  end
end
