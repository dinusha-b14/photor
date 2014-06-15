module Photor
  class Photo < Photor::Base
    def get_recent(options={})
      @options = options.merge(method: 'flickr.photos.getRecent')
      wrap_options
      get('/', @options)
    end

    def wrap_options
      merge_config_options
      @options = { query: @options }
    end

  end
end