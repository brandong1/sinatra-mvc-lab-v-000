require_relative 'config/environment'

class App < Sinatra::Base
  get '/'do
    erb :index
  end

  post '/' do
    text = params[:user_text]

    @piglatinizer_text = PigLatinizer.new(params[:user_text])

    erb :results
  end
end
