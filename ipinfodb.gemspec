# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'ipinfodb/version'

Gem::Specification.new do |gem|
  gem.name        = "ipinfodb"
  gem.version     = Ipinfodb::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Tomasz Mazur"]
  gem.email       = ["defkode@gmail.com"]
  gem.homepage    = "http://ipinfodb.com"
  gem.summary     = %q{Free IP address geolocation tools}
  gem.description = %q{Free IP address geolocation tools}

  gem.rubyforge_project = "ipinfodb"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency('httparty', '~> 0.6')

  gem.add_development_dependency('rake')
end
