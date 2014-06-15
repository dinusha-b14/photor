require 'simplecov'
SimpleCov.start

require 'photor'
require 'ffaker'
require 'factory_girl'
require 'dotenv'
require 'json'
require 'byebug'
require 'photor_helpers'

Dotenv.load

Photor.configure do |config|
  config.api_key = ENV['FLICKR_API_KEY']
  config.format = :json
  config.nojsoncallback = 1
end

RSpec.configure do |config|

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.color = :enabled

  config.order = :random

  config.include PhotorHelpers

  config.add_formatter(:documentation)

end