lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'namespaced_engine/version'

Gem::Specification.new do |spec|
  spec.name          = 'namespaced_engine'
  spec.version       = NamespacedEngine::VERSION
  spec.authors       = ['Thibault']
  spec.email         = ['thibault@devblast.com']
  spec.summary       = 'Generates namespaced engines.'
  spec.description   = 'This gem will generate namespaced engines as shown in the Modular Rails book (https://devblast.com/c/modular-rails).'
  spec.homepage      = 'https://github.com/T-Dnzt/Modular-Engine'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 7.0'
  spec.add_dependency 'pry-rails'
  
  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'minitest', '~> 5.15.0'
  spec.add_development_dependency 'minitest-hooks', '~> 1.5.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '~> 1.25'
end
