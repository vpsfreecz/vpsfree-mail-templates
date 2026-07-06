template :alert_unpaid_cpu_confirmed do
  label 'Unpaid CPU overuse alert'

  protocol :email do
    from        'vpsadmin@vpsfree.cz'
  end
end
