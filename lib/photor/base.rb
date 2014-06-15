module Photor
  class Base
    include HTTParty
    base_uri 'https://api.flickr.com/services/rest'

    def get(url, options)
      self.class.get(url, options)
    end
  end
end