module OpenWeatherMap
    class Error < StandardError; end

    # Exception raised when required params are missing
    class MissingParams < Error; end
end