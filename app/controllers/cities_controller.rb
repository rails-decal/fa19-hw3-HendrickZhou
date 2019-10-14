require_relative '../services/weather_service'

class CitiesController < ApplicationController
  def index

  end

  def view
    if not params.has_key?(:city)
      puts "no city provided"
      @cities=City.all.values
      puts @cities.length
    else
      if City.all.has_key?(params[:city].to_sym)
        # show this city
        @cities = City.cities[params[:city].to_sym]
      else
        # dont care right

      end
    end
  end

  def new
    @w = WeatherService.get(params[:name])
    if @w
      city = City.new(
        name: params[:name],
        population: params[:population],
        landmark: params[:landmark]
      )
      city.save
    end
  end


end
