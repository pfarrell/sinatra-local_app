require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'rack/test'

require File.join(File.dirname(__FILE__), '..', 'lib', 'sinatra', 'presence')
require File.join(File.dirname(__FILE__), 'app', 'test_app')

RSpec.configure do |config|
=begin
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  begin
    config.filter_run :focus
    config.run_all_when_everything_filtered = true
    config.disable_monkey_patching!
    config.warnings = true
    if config.files_to_run.one?
      config.default_formatter = 'doc'
    end

    config.profile_examples = 10

    config.order = :random

    Kernel.srand config.seed
  end
=end
  def app
    @app ||= ::Rack::Builder.new do 
      run ::TestApp
    end
  end

  config.include ::Rack::Test::Methods
end

