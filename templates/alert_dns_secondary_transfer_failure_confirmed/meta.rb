template :alert_dns_secondary_transfer_failure_confirmed do
  label 'DNS secondary transfer failure alert'
  user_visibility true

  protocol :email do

    lang :cs do
      from        'podpora@vpsfree.cz'
      reply_to    'podpora@vpsfree.cz'
      return_path 'podpora@vpsfree.cz'
    end

    lang :en do
      from        'support@vpsfree.org'
      reply_to    'support@vpsfree.org'
      return_path 'support@vpsfree.org'
    end
  end
end
