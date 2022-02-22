require 'minitest/autorun'
require 'open_weather_map'

class OpenWeatherMapTest < Minitest::Test
  def test_current_temperature(params)
    assert_equal "hello world", OpenWeatherMap.hi("english")
  end
end