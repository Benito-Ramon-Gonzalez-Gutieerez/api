class ApiController < ApplicationController
    require 'net/http'
    require 'json'
    
def index
    url = URI("https://api.nasa.gov/planetary/apod?api_key=bR0mRUfPzms4xK8omhWSVHVRJZ4ALEEtTptOkBxe")
    response = Net::HTTP.get(url)
    data = JSON.parse(response)
    @apod_data = data
end
def principal 

end

end
