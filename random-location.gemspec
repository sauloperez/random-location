$:.push File.expand_path("../lib", __FILE__)
require "random-location/version"

Gem::Specification.new do |spec|
  spec.name          = "random-location"
  spec.version       = RandomLocation::VERSION
  spec.authors       = ["Pau Pérez"]
  spec.email         = ["saulopefa@gmail.com"]
  spec.description   = "Generates geographic coordinates randomly chosen near by the location and within the radius specified. It aims to provide a way to generate dummy data for geographical apps. NOTE that all results are approximate values since problems derived from the shape of the earth have not been taken into consideration."
  spec.summary       = "Generates a random location nearby the one you provide"
  spec.homepage      = "http://github.com/sauloperez/random-location"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
end
