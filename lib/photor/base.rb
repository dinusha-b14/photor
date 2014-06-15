module Photor
  class Base
    include HTTParty
    base_uri 'https://api.flickr.com/services/rest'

    def get(url, options)
      self.class.get(url, options)
    end

    private

    def merge_config_options
      @options.merge!(
        api_key: Photor.configuration.api_key,
        format: Photor.configuration.format.to_s,
        nojsoncallback: Photor.configuration.nojsoncallback
      )
    end

  end
end