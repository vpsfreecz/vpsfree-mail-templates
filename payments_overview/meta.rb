template do
  label        'Payments overview for admins'
  from         'vpsadmin@vpsfree.cz'
  subject      'vpsAdmin Payments since <%= @start.strftime("%d/%m/%Y %H:%M") %>'
end
