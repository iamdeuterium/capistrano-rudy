# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'capistrano/rudy/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-rudy'
  spec.version       = Capistrano::Rudy::VERSION
  spec.authors       = ['Stanislav Fesenko']
  spec.email         = ['iamdeuterium@gmail.com']

  spec.summary       = 'Notify the telegram bot @RudyIsBot on deploy'
  spec.homepage      = 'http://iamdeuterium.ru'
  spec.license       = 'MIT'

  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano-webhooks'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'bundler'
end
