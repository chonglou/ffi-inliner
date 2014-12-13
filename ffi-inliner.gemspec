# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ffi-inliner/version'

Gem::Specification.new do |spec|
  spec.name          = 'ffi-inliner'
  spec.version       = Inliner::VERSION
  spec.authors       = ['Andrea Fazzi', 'Jitang Zheng']
  spec.email         = %w(andrea.fazzi@alcacoop.it jitang.zheng@gmail.com)
  spec.summary       = %q{Mix C in (J)Ruby and gulp it on the fly! }
  spec.description   = %q{With ffi-inliner you can run C code within your ruby script.}
  spec.homepage      = 'https://github.com/chonglou/ffi-inliner'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
