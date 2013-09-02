require 'rubygems'
require 'bundler/setup'

RSpec.configure do |config|
  config.include RSpec::Viewport, :type => :feature
end
