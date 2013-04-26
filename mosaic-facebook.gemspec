# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mosaic/facebook/version"

Gem::Specification.new do |s|
  s.name        = "mosaic-facebook"
  s.version     = Mosaic::Facebook::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ajit Singh"]
  s.email       = ["ajit.singh@mosaic.com"]
  s.homepage    = ""
  s.summary     = %q{gem/plugin to connect to facebook graph api}
  s.description = %q{small app written and improved over time to solve our need to connect and fetch data from facebook}

  s.files = Dir["{lib,spec}/**/*", "[A-Z]*", "init.rb"]
  s.require_path = "lib"

  s.rubyforge_project = "mosaic_facebook"
  s.required_rubygems_version = ">= 1.3.4"

  s.add_dependency "httparty", "~> 0.10.2"
  s.add_dependency "activesupport", "~> 3.0"


  if RUBY_VERSION < "1.9"
    s.add_development_dependency "ruby-debug"
  else
    s.add_development_dependency "debugger"
  end
  s.add_development_dependency "rspec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
