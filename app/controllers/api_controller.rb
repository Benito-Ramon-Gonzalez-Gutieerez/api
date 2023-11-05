class ApiController < ApplicationController
    require 'net/http'
    require 'json'
    require 'httparty'
    
def index
    #url = URI("https://api.nasa.gov/planetary/apod?api_key=bR0mRUfPzms4xK8omhWSVHVRJZ4ALEEtTptOkBxe")\
    url = URI("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")
    response = Net::HTTP.get(url)
    data = JSON.parse(response)
    @apod_data = data
end


def principal 
    #mostar imagen del dia DEMO_KEY
    #url = URI("https://api.nasa.gov/planetary/apod?api_key=bR0mRUfPzms4xK8omhWSVHVRJZ4ALEEtTptOkBxe")
    url = URI("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")
    response = Net::HTTP.get(url)
    data = JSON.parse(response)
    @apod_data = data
    
    #Mostrar imagenes de marte
    #url_m = URI("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&page=2&api_key=bR0mRUfPzms4xK8omhWSVHVRJZ4ALEEtTptOkBxe")
    url_m = URI("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&page=2&api_key=DEMO_KEY")
    response_m = Net::HTTP.get(url_m)
    data_m = JSON.parse(response_m)
    @marte_data = data_m
    
    #Mostrar exoplanetas
    #response = HTTParty.get("https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?table=exoplanets&format=json&api_key=bR0mRUfPzms4xK8omhWSVHVRJZ4ALEEtTptOkBxe")
    response = HTTParty.get("https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?table=exoplanets&format=json&api_key=DEMO_KEY")

    @exoplanets_data = JSON.parse(response.body)
    @exoplanet = exoplanets_data.sample
end

end
