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
      p_name = params["pirate"]["name"]
      p_weight = params["pirate"]["weight"]
      p_height = params["pirate"]["height"]
      @pirate = Pirate.new(p_name, p_weight, p_height)
      erb :'pirates/show'

    end

  end
end
