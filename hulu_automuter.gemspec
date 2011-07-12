# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hulu_automuter/version"

Gem::Specification.new do |s|
  s.name        = "hulu_automuter"
  s.version     = HuluAutomuter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.8.6'

  s.authors     = ["Daniel Choi"]
  s.email       = ["dhchoi@gmail.com"]
  s.homepage    = "http://danielchoi.com/software/hulu_automuter.html"
  s.summary     = %q{Auto-mute Hulu commericials}
  s.description = %q{Auto-mute Hulu commericials}

  s.rubyforge_project = "hulu_automuter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end

