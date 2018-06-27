require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/new' do
      erb :new
    end

  end
end
