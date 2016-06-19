def run(action)
  fail 'API must be set' unless ENV['API']

  cmd = ['vpsadmin-mail-templates', ENV['API'], action]

  cmd << "--user #{ENV['USERNAME']}" if ENV['USERNAME']
  cmd << "--password #{ENV['PASSWORD']}" if ENV['PASSWORD']

  pid = Process.fork { Process.exec(cmd.join(' ')) }
  Process.wait(pid)
end

desc 'Test authentication'
task :test do
  run(:auth)
end

desc 'Install mail templates'
task :install do
  run(:install)
end

task default: [:install]
