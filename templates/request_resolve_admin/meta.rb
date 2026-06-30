template :request_action_role do
  label 'Request resolve (admin)'

  protocol :email do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
  end
end
