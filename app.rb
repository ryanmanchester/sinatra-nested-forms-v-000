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
      binding.pry
      pirate_name = params["pirate"]["name"]
      pirate_weight = params["pirate"]["weight"]
      pirate_height = params["pirate"]["height"]
      @pirate = Pirate.new(pirate_name, pirate_weight, pirate_height)

      name = params["pirate"]["ships"]["name"]
      erb :'pirates/show'

    end

  end
end
