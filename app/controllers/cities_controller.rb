require_relative '../services/weather_service'

class CitiesController < ApplicationController
  def index

  end

  def view
    if not params.has_key?(:city)
      @cities=City.all.values
    else
      if City.cities.has_key?(param[:city].to_sym)
        # show this city
        @cities = City.cities[param[:city].to_sym]
      else
        # dont care right

      end
    end
  end

  def new
    
  end


end
