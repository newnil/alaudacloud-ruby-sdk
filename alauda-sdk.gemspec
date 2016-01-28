# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alauda/version'

Gem::Specification.new do |spec|
  spec.name          = 'alauda-sdk'
  spec.version       = Alauda::VERSION
  spec.authors       = ['Akira Pan']
  spec.email         = ['p.chenliang@gmail.com']

  spec.summary       = 'Alauda Cloud SDK for Ruby'
  spec.description   = 'A Ruby program to facilitate accessing Alauda Cloud'
  spec.homepage      = 'https://github.com/newnil/alaudacloud-ruby-sdk'

  spec.files         = Dir.glob("lib/**/*.rb")
  spec.test_files    = Dir.glob("spec/**/*_spec.rb") + Dir.glob("tests/**/*.rb")
  spec.extra_rdoc_files = ['README.md', 'CHANGELOG.md']
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.license       = 'Apache 2.0'

  spec.add_dependency 'rest-client', '~> 1.8'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'simplecov', '~> 0.11'

  spec.required_ruby_version = '>= 1.9.3'
end