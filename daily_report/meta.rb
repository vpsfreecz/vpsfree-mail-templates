template do
  label        'Daily report for admins'
  from         'vpsadmin@vpsfree.cz'
  subject      'vpsAdmin daily report <%= local_date(@date[:start], "%d/%m/%Y") %>'
end
