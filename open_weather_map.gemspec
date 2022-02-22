Gem::Specification.new do |s|
    s.name        = 'open_weather_map'
    s.version     = '0.0.0'
    s.summary     = "A gem to connect to Open Weather Map and get temperature."
    s.description = "Open Weather Map connection gem."
    s.authors     = ["Josué Villa Flor"]
    s.email       = 'josuebcc@gmail.com'
    s.files       = ["lib/open_weather_map.rb"]
    s.homepage    =
      'https://rubygems.org/gems/open-weather'
    s.license       = 'MIT'
    s.add_development_dependency "rspec"
    s.add_dependency "http"
  end