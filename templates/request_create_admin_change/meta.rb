template :request_create_admin_change do
  label 'Request change (admin)'

  protocol :email do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
  end
end
