desc "read news article from STDIN and post to rubyforge"
task :publish_news do
  require 'rubyforge'
  spec = Gem::Specification.load('raindrops.gemspec')
  tmp = Tempfile.new('rf-news')
  _, subject, body = `git cat-file tag v#{spec.version}`.split(/\n\n/, 3)
  tmp.puts subject
  tmp.puts
  tmp.puts spec.description.strip
  tmp.puts ""
  tmp.puts "* #{spec.homepage}"
  tmp.puts "* #{spec.email}"
  tmp.puts "* #{git_url}"
  tmp.print "\nChanges:\n\n"
  tmp.puts body
  tmp.flush
  system(ENV["VISUAL"], tmp.path) or abort "#{ENV["VISUAL"]} failed: #$?"
  msg = File.readlines(tmp.path)
  subject = msg.shift
  blank = msg.shift
  blank == "\n" or abort "no newline after subject!"
  subject.strip!
  body = msg.join("").strip!

  rf = RubyForge.new.configure
  rf.login
  rf.post_news('rainbows', subject, body)
end
