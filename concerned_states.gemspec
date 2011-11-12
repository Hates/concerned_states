# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "concerned_states"
  s.version     = "0.1.2"
  s.authors     = ["Richard Hart"]
  s.email       = ["richard@ur-ban.com"]
  s.homepage    = ""
  s.summary     = %q{A simple ActiveSupport::Concern for state related stuff I use frequently.}
  s.description = %q{A simple ActiveSupport::Concern for state related stuff I use frequently.}

  s.rubyforge_project = "concerned_states"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
