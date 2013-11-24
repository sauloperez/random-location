Gem::Specification.new do |s|
  s.name        = 'random-location'
  s.version     = '0.1.0'
  s.date        = Date.today.to_s
  s.summary     = "Generates geographic coordinates randomly chosen near by the location and within the radius specified. It aims to provide a way to generate dummy data for geographical apps. NOTE that all results are approximate values since problems derived from the shape of the earth have not been taken into consideration."
  s.description = "Generates a random location nearby the one you provide"
  s.authors     = ["Pau Pérez"]
  s.email       = 'saulopefa@gmail.com'
  s.files       = ["lib/random-location.rb"]
  s.homepage    = 'http://github.com/sauloperez/random-location'
  s.license     = 'MIT'
  s.executables << 'random-location'
end
