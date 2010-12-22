# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "syslog_helpers/version"

Gem::Specification.new do |s|
  s.name        = "syslog_helpers"
  s.version     = SyslogHelpers::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tommy Bishop"]
  s.email       = ["bishop.thomas@gmail.com"]
  s.homepage    = "https://github.com/thbishop/syslog_helpers"
  s.summary     = %q{Helpers for syslog messages}
  s.description = %q{Hopefully making life easier when working with syslog message content}

  s.rubyforge_project = "syslog_helpers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency 'rspec', '~> 2.3'
end
