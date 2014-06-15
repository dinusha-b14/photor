module Photor
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :api_key, :format, :nojsoncallback

    def initialize
      @format = :rest
      @nojsoncallback = 0
    end
  end
end