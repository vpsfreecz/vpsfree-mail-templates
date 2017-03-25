template :request_resolve_role_type_state do
  label 'Request registration denied (user)'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     'Re: [vpsFree.cz] Přihláška přijata'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     'Re: [vpsFree.cz] Registration accepted'
  end
end
