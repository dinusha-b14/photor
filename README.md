# photor - Flickr API

photor is a gem for communicating with the Flickr API. It allows a variety of different response formats as well as configurations

## Installation

To install locally, execute the following from a command line:

    gem install photor

Or include the following within your Gemfile

    gem 'photor'

And then run

    bundle install


## Configuration

Within your application's initializers, create a new file and setup the following variables:

    Photor.configure do |config|

      config.api_key = "your api key"

      config.format = preferred_response_type (i.e. :json, :rest, :xml). This is set to :rest by default

      config.nojsoncallback = (either 1 or 0 depending on the type of json response you would like)