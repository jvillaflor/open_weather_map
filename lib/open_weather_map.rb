require "http"
require "uri"
require "json"

module OpenWeatherMap
  class Client
    def initialize(options)
      raise MissingParams.new("App key is required. Please, set app_id parameter.") if !options.key?(:app_id)
      @app_id = options[:app_id]
      @base_url = "http://api.openweathermap.org/data/2.5"
    end

    def weather(params)
      request("/weather", params)
    end

    def forecast(params)
      request("/forecast", params)
    end

    private
    
    def request(path, params, method = :get)
      params[:appid] = @app_id
      validate_params(params)
      query_str = URI.encode_www_form(params)
      response = HTTP.send(method, @base_url + path + "?" + query_str)
      JSON.parse(response.body, {:symbolize_names => true})
    end
  
    def validate_params(params)
      if !params.key?(:lat) || !params.key?(:lon)
        raise MissingParams.new("Both lat and lon are required.")
      end
    end
  end
end

require 'open_weather_map/exceptions'