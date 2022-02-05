template :expiration_warning do
  label 'Payment notification'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] <% if @expired_days_ago.between?(13, 14) %>Členství <%= @user.login %> bude pozastaveno<% else %>Platba členského příspěvku - <%= @user.login %><% end %>'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] <% if @expired_days_ago.between?(13, 14) %>Membership <%= @user.login %> is going to be suspended<% else %>Payment of membership fee - <%= @user.login %><% end %>'
  end
end
