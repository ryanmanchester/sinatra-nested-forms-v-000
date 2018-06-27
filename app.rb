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
      name = params["pirate"]["name"]
      weight = params["pirate"]["weight"]
      height = params["pirate"]["height"]
      @pirate = Pirate.new(name, weight, height)
      erb :'pirates/show'

    end

  end
end
