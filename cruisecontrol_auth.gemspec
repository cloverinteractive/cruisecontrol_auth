# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cruisecontrol_auth/version"

Gem::Specification.new do |s|
  s.name        = "cruisecontrol_auth"
  s.version     = CruisecontrolAuth::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Enrique Vidal"]
  s.email       = ["enrique@cloverinteractive.com"]
  s.homepage    = "http://github.com/cloverinteractive/cruise_control_auth"
  s.summary     = %q{Add simple authentication to cruisecontrol.rb}
  s.has_rdoc    = false

  [ [ "rails",  "~> 3.0.0"  ],
    [ "acl9",   "0.12.0"    ],
    [ "devise", "2.0.0"     ]
  ].each do |gem, version|
    s.add_dependency gem, version
  end

  [
    [ "mocha",  "0.9.12"  ],
    [ "turn",   nil       ],
  ].each do |gem, version|
    s.add_development_dependency gem, version
  end

  s.rubyforge_project = "cruise_control_auth"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
