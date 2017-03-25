template do
  label 'Payment accepted'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] Přijata platba <%= @user.login %> - <%= @payment.received_amount %> <%= @payment.received_currency.to_s.upcase %>'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] Accepted payment <%= @user.login %> - <%= @payment.received_amount %> <%= @payment.received_currency.to_s.upcase %>'
  end
end
