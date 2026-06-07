template do
  label        'Payments overview for admins'
  from         'vpsadmin@vpsfree.cz'
  subject      'vpsAdmin Payments since <%= local_time(@start, "%d/%m/%Y %H:%M") %>'
end
