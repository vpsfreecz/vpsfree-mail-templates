template :security_advisory_user_update do
  label 'Security advisory update'

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     'Re: [vpsFree.cz] Security advisory: <%= @a.cves %>'
  end

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     'Re: [vpsFree.cz] Bezpečnostní oznámení: <%= @a.cves %>'
  end
end
