# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra/presence/version'

Gem::Specification.new do |spec|
  spec.name          = "sinatra-presence"
  spec.version       = Sinatra::Presence::VERSION
  spec.authors       = ["Patrick Farrell"]
  spec.email         = ["mr.pfarrell@gmail.com"]
  spec.summary       = %q{Adds ability to redirect an application to a local ip}
  spec.description   = %q{Sinatra extension for allowing an application to auto-redirect to
                          to a local ip address when it's possible.}
  spec.homepage      = "https://github.com/pfarrell/sinatra-presence"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'sinatra', '>= 1.3'
  spec.add_development_dependency "bundler", ">= 1.6"
  spec.add_development_dependency "rake", ">= 10.3"
  spec.add_development_dependency "rspec", ">= 3.1"
  spec.add_development_dependency "rack-test", ">= 0.6"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "byebug"
end
