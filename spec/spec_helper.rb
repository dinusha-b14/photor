require 'simplecov'
SimpleCov.start

require 'photor'
require 'ffaker'
require 'factory_girl'
require 'dotenv'
require 'httparty'

Photor.configure do |config|
  config.api_key = ENV['FLICKR_API_KEY']

  config.format = :json
end

RSpec.configure do |config|

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.color = :enabled

  config.order = :random

end