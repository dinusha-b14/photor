#encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'photor/version'

Gem::Specification.new do |spec|
  spec.name          = "photor"
  spec.version       = Photor::VERSION
  spec.authors       = ["Dinusha Bodhinayake"]
  spec.email         = ["dinushab@jobready.com.au"]
  spec.description   = "Implements Web Service for Flickr"
  spec.summary       = "Implements Web Service for Flickr"
  spec.homepage      = "https://github.com/dinusha-b14/photor"
  spec.license       = "MIT"
  
  spec.files         = `git ls-files`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_dependency "oauth"
  spec.add_dependency "hashugar"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "ffaker"
  spec.add_development_dependency "factory_girl"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "dotenv"

end