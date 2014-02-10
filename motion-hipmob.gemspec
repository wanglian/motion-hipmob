# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion-hipmob/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Lian Wang"]
  gem.email         = ["wanglian1024@gmail.com"]
  gem.description   = %q{A rubymotion wrapper for Hipmob SDK}
  gem.summary       = %q{A rubymotion wrapper for Hipmob SDK}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "motion-hipmob"
  gem.require_paths = ["lib"]
  gem.version       = MotionHipmob::VERSION
  
  gem.add_dependency "motion-require"
end
