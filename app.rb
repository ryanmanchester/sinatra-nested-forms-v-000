require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do
      #binding.pry
      pirate_name = params["pirate"]["name"]
      pirate_weight = params["pirate"]["weight"]
      pirate_height = params["pirate"]["height"]
      @pirate = Pirate.new(pirate_name, pirate_weight, pirate_height)

      ship_name_1 = params["pirate"]["ships"][0]["name"]
      ship_type_1 = params["pirate"]["ships"][0]["type"]
      ship_booty_1 = params["pirate"]["ships"][0]["booty"]
      @ship_1 = Ship.new(ship_name_1, ship_type_1, ship_booty_1)

      ship_name_2 = params["pirate"]["ships"][1]["name"]
      ship_type_2 = params["pirate"]["ships"][1]["type"]
      ship_booty_2 = params["pirate"]["ships"][1]["booty"]
      @ship_2 = Ship.new(ship_name_2, ship_type_2, ship_booty_2)
      erb :'pirates/show'

    end

  end
end
