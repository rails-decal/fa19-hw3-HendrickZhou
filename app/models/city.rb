class City
    attr_accessor :name, :population, :landmark, :weather
    $cities = {}
    def initialize(city_params)
        @name = city_params[:name]
        @population = city_params[:population]
        @landmark = city_params[:landmark]
        @weather = WeatherService.get(@name)
    end

    def save
        $cities[@name.to_sym] = self
    end

    def self.all
        $cities
    end
    def update(update_params)
        if update_params.key?(:name)
            @name = update_params[:name]
        end
        if update_params.key?(:population)
            @name = update_params[:population]
        end
        if update_params.key?(:landmark)
            @name = update_params[:landmark]
        end
        # Use update_params (a hash) to update the model
	end
end