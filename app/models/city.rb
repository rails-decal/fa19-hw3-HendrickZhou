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

    def find(name)
        $cities.key?(name.to_sym)
    end

    def self.all
        $cities
    end
	def update(update_params)
		# Your code here, for Task 4
		# Use update_params (a hash) to update the model
	end
end