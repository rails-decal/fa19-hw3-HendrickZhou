require_relative '../services/weather_service'

class CitiesController < ApplicationController
  def index

  end

  def view
    if param[:city].nil?
      @cities=City.all.values
    else
      # @city=City.new(param[:city])
  end

end
