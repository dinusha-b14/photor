module Photor
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :api_key

    def initialize
      @api_key = ENV['FLICKR_API_KEY']
    end
  end
end