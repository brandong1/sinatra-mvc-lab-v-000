require_relative 'config/environment'

class App < Sinatra::Base
  get '/'do
    erb :user_input
  end

  post '/piglatinize' do
      pl = PigLatinizer.new
      @piglatin = pl.piglatinize(params[:user_phrase])
      erb :results
    end
  # post '/piglatinize' do
  #   @piglatinizer_text = PigLatinizer.new(params[:user_text])
  #   erb :results
  # end
end
