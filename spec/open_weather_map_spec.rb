require 'spec_helper'
require 'open_weather_map'

describe "OpenWeatherMap", type: :request do
  before do
    @appid = "3e1be406d7ee0e88efe108c2e0521ee1"
    @lat = -12.8477
    @lon = -39.0897
  end

  it "should returns the current data" do
      client = OpenWeatherMap::Client.new(app_id: @appid)
      data = client.weather(lat: @lat, lon: @lon, units: :metric)
      expect(data.has_key?(:cod)).to be true
      expect(data[:cod].to_s).to eq("200")
      expect(data[:main].has_key?(:temp)).to be true
  end

  it "should returns forecast data" do
    client = OpenWeatherMap::Client.new(app_id: @appid)
    data = client.forecast(lat: @lat, lon: @lon, units: :metric)
    expect(data.has_key?(:cod)).to be true
    expect(data[:cod].to_s).to eq("200")
    expect(data[:list]).not_to be_empty
  end 

  it "should raises missing params" do
    client = OpenWeatherMap::Client.new(app_id: @appid)
    
    expect { 
        data = client.weather(units: :metric)
    }.to raise_error(OpenWeatherMap::MissingParams)
  end
end