template :request_create_admin_registration do
  label 'Request registration (admin)'

  protocol :email do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
  end
end
