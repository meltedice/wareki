# -*- encoding: utf-8 -*-
require File.expand_path('../lib/wareki/version', __FILE__)

Gem::Specification.new do |gem|
  gem.version       = Wareki::VERSION
  gem.authors       = ["ice"]
  gem.email         = ["meltedise@gmail.com"]
  gem.description   = "Wareki - Japanese Calendar Date extention"
  gem.summary       = "wareki--#{gem.version}"
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "wareki"
  gem.require_paths = ["lib"]
end
