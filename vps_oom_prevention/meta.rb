template do
  label 'VPS OOM prevention'

  lang :cs do
    from        'podpora@vpsfree.cz'
    reply_to    'podpora@vpsfree.cz'
    return_path 'podpora@vpsfree.cz'
    subject     '[vpsFree.cz] VPS #<%= @vps.id %> <%= @action == :restart ? "restartován" : "vypnut" %> z důvodu nedostatku paměti'
  end

  lang :en do
    from        'support@vpsfree.org'
    reply_to    'support@vpsfree.org'
    return_path 'support@vpsfree.org'
    subject     '[vpsFree.cz] VPS #<%= @vps.id %> <%= @action == :restart ? "restarted" : "shut down" %> due to memory shortage'
  end
end
