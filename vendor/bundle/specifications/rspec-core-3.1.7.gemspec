# -*- encoding: utf-8 -*-
# stub: rspec-core 3.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-core"
  s.version = "3.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Steven Baker", "David Chelimsky", "Chad Humphries", "Myron Marston"]
  s.bindir = "exe"
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDjjCCAnagAwIBAgIBATANBgkqhkiG9w0BAQUFADBGMRIwEAYDVQQDDAlyc3Bl\nYy1kZXYxGzAZBgoJkiaJk/IsZAEZFgtnb29nbGVnb3VwczETMBEGCgmSJomT8ixk\nARkWA2NvbTAeFw0xMzExMDcxOTQyNTlaFw0xNDExMDcxOTQyNTlaMEYxEjAQBgNV\nBAMMCXJzcGVjLWRldjEbMBkGCgmSJomT8ixkARkWC2dvb2dsZWdvdXBzMRMwEQYK\nCZImiZPyLGQBGRYDY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA\nnhCeZouDLXWO55no+EdZNCtjXjfJQ1X9TbPcvBDD29OypIUce2h/VdKXB2gI7ZHs\nF5NkPggslTErGFmWAtIiur7u943RVqHOsyoIsy065F9fCtrykkA+22elvTDha4Iz\nRUCvuhQ3klatYk4jF+cGt1jNONNVdLOiy0bMynvcM7hoVQ2AomwGs+cEOWQ/4dkD\nJcNV3qfzF5QBcTD2372XNM53b25nYVQSX2KH5FF7BhlKyov33bOm2gA9M+mWIujW\nqgkyxVlfrlE+ZBgV3wXn1Cojg1LpTq35yOArgwioyrwwlZZJR9joN9s/nDklfr5A\n+dyETjFc6cmEPWZrt2cJBQIDAQABo4GGMIGDMAkGA1UdEwQCMAAwCwYDVR0PBAQD\nAgSwMB0GA1UdDgQWBBSW+WD7hn1swJ1A7i8tbuFeuNCJCjAkBgNVHREEHTAbgRly\nc3BlYy1kZXZAZ29vZ2xlZ291cHMuY29tMCQGA1UdEgQdMBuBGXJzcGVjLWRldkBn\nb29nbGVnb3Vwcy5jb20wDQYJKoZIhvcNAQEFBQADggEBAH27jAZ8sD7vnXupj6Y+\nBaBdfHtCkFaslLJ0aKuMDIVXwYuKfqoW15cZPDLmSIEBuQFM3lw6d/hEEL4Uo2jZ\nFvtmH5OxifPDzFyUtCL4yp6qgNe/Xf6sDsRg6FmKcpgqCwNOmsViaf0LPSUH/GYQ\n3Teoz8QCaDbD7AKsffT7eDrnbHnKweO1XdemRJC98u/yYxnGzMSWKEsn09etBlZ9\n7H67k5Z3uf6cfLZgToWL6zShzZY3Nun5r73YsNf2/QZOe4UZe4vfGvn6baw53ys9\n1yHC1AcSYpvi2dAbOiHT5iQF+krm4wse8KctXgTNnjMsHEoGKulJS2/sZl90jcCz\nmuA=\n-----END CERTIFICATE-----\n"]
  s.date = "2014-10-12"
  s.description = "BDD for Ruby. RSpec runner and example groups."
  s.email = "rspec@googlegroups.com"
  s.executables = ["rspec"]
  s.files = ["exe/rspec"]
  s.homepage = "http://github.com/rspec/rspec-core"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = "rspec"
  s.rubygems_version = "2.2.2"
  s.summary = "rspec-core-3.1.7"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec-support>, ["~> 3.1.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.0.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.3"])
      s.add_development_dependency(%q<minitest>, ["~> 5.3"])
      s.add_development_dependency(%q<aruba>, ["~> 0.5"])
      s.add_development_dependency(%q<nokogiri>, ["= 1.5.2"])
      s.add_development_dependency(%q<coderay>, ["~> 1.0.9"])
      s.add_development_dependency(%q<mocha>, ["~> 0.13.0"])
      s.add_development_dependency(%q<rr>, ["~> 1.0.4"])
      s.add_development_dependency(%q<flexmock>, ["~> 0.9.0"])
    else
      s.add_dependency(%q<rspec-support>, ["~> 3.1.0"])
      s.add_dependency(%q<rake>, ["~> 10.0.0"])
      s.add_dependency(%q<cucumber>, ["~> 1.3"])
      s.add_dependency(%q<minitest>, ["~> 5.3"])
      s.add_dependency(%q<aruba>, ["~> 0.5"])
      s.add_dependency(%q<nokogiri>, ["= 1.5.2"])
      s.add_dependency(%q<coderay>, ["~> 1.0.9"])
      s.add_dependency(%q<mocha>, ["~> 0.13.0"])
      s.add_dependency(%q<rr>, ["~> 1.0.4"])
      s.add_dependency(%q<flexmock>, ["~> 0.9.0"])
    end
  else
    s.add_dependency(%q<rspec-support>, ["~> 3.1.0"])
    s.add_dependency(%q<rake>, ["~> 10.0.0"])
    s.add_dependency(%q<cucumber>, ["~> 1.3"])
    s.add_dependency(%q<minitest>, ["~> 5.3"])
    s.add_dependency(%q<aruba>, ["~> 0.5"])
    s.add_dependency(%q<nokogiri>, ["= 1.5.2"])
    s.add_dependency(%q<coderay>, ["~> 1.0.9"])
    s.add_dependency(%q<mocha>, ["~> 0.13.0"])
    s.add_dependency(%q<rr>, ["~> 1.0.4"])
    s.add_dependency(%q<flexmock>, ["~> 0.9.0"])
  end
end
