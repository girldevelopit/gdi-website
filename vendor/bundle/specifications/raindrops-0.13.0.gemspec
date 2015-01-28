# -*- encoding: utf-8 -*-
# stub: raindrops 0.13.0 ruby lib
# stub: ext/raindrops/extconf.rb

Gem::Specification.new do |s|
  s.name = "raindrops"
  s.version = "0.13.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["raindrops hackers"]
  s.date = "2014-02-18"
  s.description = "Raindrops is a real-time stats toolkit to show statistics for Rack HTTP\nservers.  It is designed for preforking servers such as Rainbows! and\nUnicorn, but should support any Rack HTTP server under Ruby 2.0, 1.9,\n1.8 and Rubinius on platforms supporting POSIX shared memory.  It may\nalso be used as a generic scoreboard for sharing atomic counters across\nmultiple processes."
  s.email = "raindrops@librelist.org"
  s.extensions = ["ext/raindrops/extconf.rb"]
  s.extra_rdoc_files = ["README", "LICENSE", "NEWS", "ChangeLog", "lib/raindrops.rb", "lib/raindrops/aggregate.rb", "lib/raindrops/aggregate/last_data_recv.rb", "lib/raindrops/aggregate/pmq.rb", "lib/raindrops/last_data_recv.rb", "lib/raindrops/linux.rb", "lib/raindrops/middleware.rb", "lib/raindrops/middleware/proxy.rb", "lib/raindrops/struct.rb", "lib/raindrops/watcher.rb", "ext/raindrops/raindrops.c", "ext/raindrops/linux_inet_diag.c", "ext/raindrops/linux_tcp_info.c"]
  s.files = ["ChangeLog", "LICENSE", "NEWS", "README", "ext/raindrops/extconf.rb", "ext/raindrops/linux_inet_diag.c", "ext/raindrops/linux_tcp_info.c", "ext/raindrops/raindrops.c", "lib/raindrops.rb", "lib/raindrops/aggregate.rb", "lib/raindrops/aggregate/last_data_recv.rb", "lib/raindrops/aggregate/pmq.rb", "lib/raindrops/last_data_recv.rb", "lib/raindrops/linux.rb", "lib/raindrops/middleware.rb", "lib/raindrops/middleware/proxy.rb", "lib/raindrops/struct.rb", "lib/raindrops/watcher.rb"]
  s.homepage = "http://raindrops.bogomips.org/"
  s.licenses = ["LGPLv2.1+"]
  s.rdoc_options = ["-t", "raindrops - real-time stats for preforking Rack servers", "-W", "http://bogomips.org/raindrops.git/tree/%s"]
  s.rubyforge_project = "rainbows"
  s.rubygems_version = "2.2.2"
  s.summary = "real-time stats for preforking Rack servers"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<aggregate>, ["~> 0.2"])
      s.add_development_dependency(%q<io-extra>, [">= 1.2.3", "~> 1.2"])
      s.add_development_dependency(%q<posix_mq>, ["~> 2.0"])
      s.add_development_dependency(%q<rack>, ["~> 1.2"])
      s.add_development_dependency(%q<unicorn>, [">= 0.98"])
      s.add_development_dependency(%q<wrongdoc>, [">= 1.6.2", "~> 1.6.2"])
    else
      s.add_dependency(%q<aggregate>, ["~> 0.2"])
      s.add_dependency(%q<io-extra>, [">= 1.2.3", "~> 1.2"])
      s.add_dependency(%q<posix_mq>, ["~> 2.0"])
      s.add_dependency(%q<rack>, ["~> 1.2"])
      s.add_dependency(%q<unicorn>, [">= 0.98"])
      s.add_dependency(%q<wrongdoc>, [">= 1.6.2", "~> 1.6.2"])
    end
  else
    s.add_dependency(%q<aggregate>, ["~> 0.2"])
    s.add_dependency(%q<io-extra>, [">= 1.2.3", "~> 1.2"])
    s.add_dependency(%q<posix_mq>, ["~> 2.0"])
    s.add_dependency(%q<rack>, ["~> 1.2"])
    s.add_dependency(%q<unicorn>, [">= 0.98"])
    s.add_dependency(%q<wrongdoc>, [">= 1.6.2", "~> 1.6.2"])
  end
end
