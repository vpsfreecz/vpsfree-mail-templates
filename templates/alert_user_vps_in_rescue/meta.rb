template do
  label 'Alert user when VPS is left in rescue mode for too long'
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
