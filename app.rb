require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessons
    set :session_secret, "secret"
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    session[params.keys.first.to_sym] = "#{params.values.first}"
    @session = session
    erb :checkout
  end

end