template :request_action_role_type do
  label        'Request registration (user)'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'

  lang :cs do
    subject    '[vpsFree.cz] Přihláška přijata'
  end

  lang :en do
    subject    '[vpsFree.cz] Registration accepted'
  end
end
