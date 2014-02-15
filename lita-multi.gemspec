# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lita/multi/version'

Gem::Specification.new do |spec|
  spec.name          = 'lita-multi'
  spec.version       = Lita::Multi::VERSION
  spec.authors       = ['Zac Stewart']
  spec.email         = ['zgstewart@gmail.com']
  spec.summary       = %q{Enables Lita to connect to multiple chat services using different adapters.}
  spec.description   = %q{Enables Lita to connect to multiple chat services using different adapters.}
  spec.homepage      = "https://github.com/zacstewart/lita-multi"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'lita'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end
