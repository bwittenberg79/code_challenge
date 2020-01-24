class DevloperHereApi < ApplicationRecord
    require 'rest_client'

    @url

    def self.getData
        RestClient(@url, { :content_type => :json, "Api-Key" => "2n3HbPnrWMovp-fYQ-BRHU6qUNQlaxi7YlSCL71AgBI" })
    end

    def self.retrieve_geocoordinates(address)
        @url = "myApiUrl.com/stuff/?putYourParamNameHere=#{myParameter}"
        "https://geocoder.ls.hereapi.com/6.2/geocode.json?apiKey={Api-Key}&searchtext=#{address}"
        JSON.parse(DevloperHereApi.getData)
    end

    def self.retrieve_route(start, *destination)
        @url = "https://matrix.route.ls.hereapi.com?apiKey={Api-Key}
        &start0=#{start}
        &destination0=#{destination}
        &destination1=#{destination}
        &mode=fastest;car;traffic:disabled"
        JSON.parse(DevloperHereApi.getData)
    end
end
