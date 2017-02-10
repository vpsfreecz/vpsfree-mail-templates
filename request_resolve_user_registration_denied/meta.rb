template :request_resolve_role_type_state do
  label        'Request registration denied (user)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'

  lang :cs do
    subject    'Re: [vpsFree.cz] Přihláška přijata'
  end

  lang :en do
    subject    'Re: [vpsFree.cz] Registration accepted'
  end
end
