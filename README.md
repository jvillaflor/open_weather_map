## OpenWeatherMap

OpenWatherMap is a SDK created for connect and get data from Open Weather Map (https://openweathermap.org/).

It provides a set of methods to get weather data as json (converted to hash).

…

## Usage

Add to your Gemfile:

    gem 'open_weather_map', git: "https://github.com/jvillaflor/open_weather_map"

### Connect the client

You can connect to Open Weather Map by using Client class: 

    client = OpenWeatherMap::Client.new(app_id: "<your_appid_here>") 
    
More info about appid: https://openweathermap.org/appid.
Note you have to signup openweathermap.org to create an appid.

### Methods:

    current = client.weather(lat: -23.5558, lon: -46.6396)
    
This method returns a hash containining weather info.
For more info about the returned data and parameters, please visit https://openweathermap.org/current.

    forecast_5days = client.forecast(lat: -23.5558, lon: -46.6396)
    
This method returns a hash containining 5 day weather forecast info.
For more info about the returned data and parameters, please visit https://openweathermap.org/forecast5.
