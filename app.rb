require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @text = params[:user_text]
    
    #binding.pry

    erb :results
  end
end
