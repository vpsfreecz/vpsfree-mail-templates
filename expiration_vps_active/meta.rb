template :expiration_warning do
  label 'VPS expiration notification'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] Blíží se konec životnosti #<%= @vps.id %> <%= @vps.hostname %>'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] VPS #<%= @vps.id %> <%= @vps.hostname %> is nearing its end-of-life'
  end
end
