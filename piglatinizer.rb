require_relative 'config/environment'

class PigLatinizer < Sinatra::Base
  get '/'do
    erb :index
  end


  end
