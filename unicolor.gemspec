# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "unicolor/version"

Gem::Specification.new do |s|
  s.name        = "unicolor"
  s.version     = Unicolor::VERSION
  s.authors     = ["jugyo"]
  s.email       = ["jugyo.org@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Colorize an object uniquely!}
  s.description = %q{Colorize an object uniquely! Call Object#unicolor}

  s.rubyforge_project = "unicolor"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
