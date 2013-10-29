# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'ipinfodb/version'

Gem::Specification.new do |s|
  s.name        = "ipinfodb"
  s.version     = Ipinfodb::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tomasz Mazur"]
  s.email       = ["defkode@gmail.com"]
  s.homepage    = "http://ipinfodb.com"
  s.summary     = %q{Free IP address geolocation tools}
  s.description = %q{Free IP address geolocation tools}

  s.rubyforge_project = "ipinfodb"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency('httparty', '~> 0.6')
end
