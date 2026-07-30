require 'erb'
require 'set'

ALLOWED_TELEGRAM_HTML_TAGS = Set.new(%w[
  a b blockquote code del em i ins pre s span strike strong tg-spoiler u
]).freeze

def compile_erb(path)
  RubyVM::InstructionSequence.compile(
    ERB.new(File.read(path), trim_mode: '-').src,
    path
  )
end

def check_telegram_html_tags(path)
  source = File.read(path).gsub(/<%.*?%>/m, '')
  tags = source.scan(%r{</?([a-zA-Z][\w-]*)(?:\s[^>]*)?>}).flatten.uniq
  unsupported = tags - ALLOWED_TELEGRAM_HTML_TAGS.to_a
  return if unsupported.empty?

  fail "unsupported Telegram HTML tag(s): #{unsupported.join(', ')}"
end

desc 'Check ERB syntax and Telegram HTML tags'
task :check do
  failures = []
  files = Dir.glob('templates/**/*.erb').sort

  files.each do |path|
    compile_erb(path)
    check_telegram_html_tags(path) if path.include?('/telegram/') && path.end_with?('.html.erb')
  rescue StandardError, SyntaxError => e
    failures << "#{path}: #{e.class}: #{e.message.lines.first.strip}"
  end

  if failures.any?
    puts failures
    abort "#{failures.length} template check(s) failed"
  end

  puts "Checked #{files.length} template files"
end

task default: [:check]
