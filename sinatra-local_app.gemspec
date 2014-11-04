# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra/local_app/version'

Gem::Specification.new do |spec|
  spec.name          = "sinatra-local_app"
  spec.version       = Sinatra::LocalApp::VERSION
  spec.authors       = ["Patrick Farrell"]
  spec.email         = ["mr.pfarrell@gmail.com"]
  spec.summary       = %q{Adds ability to redirect an application to a local ip}
  spec.homepage      = "https://github.com/pfarrell/sinatra-local_app"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'sinatra', '~> 1.3'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"
end
