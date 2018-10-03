class PigLatinizer < Sinatra::Base
  get '/'do
    erb :index
  end