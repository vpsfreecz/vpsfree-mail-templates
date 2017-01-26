template do
  label        'Payment accepted'
  from         'podpora@vpsfree.cz'
  reply_to     'podpora@vpsfree.cz'
  return_path  'podpora@vpsfree.cz'

  lang :cs do
    subject    '[vpsFree.cz] Přijata platba <%= @user.login %> - <%= @payment.received_amount %> <%= @payment.received_currency %>'
  end

  lang :en do
    subject    '[vpsFree.cz] Accepted payment <%= @user.login %> - <%= @payment.received_amount %> <%= @payment.received_currency %>'
  end
end
