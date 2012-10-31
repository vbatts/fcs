# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fcs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Vincent Batts"]
  gem.email         = ["vbatts@hashbangbash.com"]
  gem.description   = %q{specification walk-through of Flow Cytometry files, Version FCS3.0}
  gem.summary       = %q{specification walk-through of Flow Cytometry files, Version FCS3.0}
  gem.homepage      = "https://github.com/vbatts/fcs"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fcs"
  gem.require_paths = ["lib"]
  gem.version       = FCS::VERSION
end
