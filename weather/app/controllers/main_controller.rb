require_relative "../services/weather_service"

class MainController < ApplicationController


  def index
      # new String("name");
    # @w = WeatherService.get(params[:city])
    @weathers = { name: params[:city], temperature: 70, description: "cloudy" }
    @w = @weathers[:name]
	if @w
    # Bonus: Converting Kelvin to Fahrenheit
		@temperature = (9 / 5) * (@weathers[:temperature] - 273) + 32
        @description = @weathers[:description]
        city = City.new(
        	name: @w,
            temperature: @temperature, # Using the converted temperature
			description: @description
        )
        # Save the city so that it's in City.all
        city.save
	end
  end

end


# <% if not @w.nil? %>
# 	<h1><%= @w %></h1>
# 	<p>
# 		It's <%= @temperature %>°F
# 		and it looks like <%= @description %>
# 	</p>
# <% end %>
#
# <%= form_with local: true, method: "get" do |f| %>
#   <%= f.text_field :city %>
#   <%= f.submit %>
# <% end %>
