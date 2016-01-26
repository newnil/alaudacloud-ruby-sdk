# -*- encoding: utf-8 -*-

require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)
require 'rspec'



require "codeclimate-test-reporter"
ENV['CODECLIMATE_REPO_TOKEN'] = 'db4d1d9caeb8a8828ac467482b85330526ffac8ba268f6ebb900cb672d12709e'
CodeClimate::TestReporter.start


require 'webmock/rspec'
require 'alauda/core'
require 'alauda/common'
WebMock.disable_net_connect!(:allow => "codeclimate.com")


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

end

