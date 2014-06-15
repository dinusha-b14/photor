module Photor
  class Photo < Photor::Base
    def getRecent(options={})
      @options = options
      wrap_options
      get("/", @options)
    end

    def wrap_options
      merge_config_options
      @options = { query: @options }
    end

    def merge_config_options
      @options.merge!(
        api_key: Photor.configuration.api_key,
        format: Photor.configuration.format
      )
    end
  end
end