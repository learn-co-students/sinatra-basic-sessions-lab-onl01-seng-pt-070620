require_relative 'config/environment'

class App < Sinatra::Base
  
   # configure sessions
    configure do 
        enable :sessions
        set :session_secret, "secret"
    end

    get '/' do
        erb :index
    end

    # The controller action /checkout, should take the params from the form 
    # and add it to the session hash. The key should be item and the value 
    # should be the item the user entered to the purchase. Make sure to store 
    # the session hash in an instance variable that you can access in the views.
    # In the view rendered by the controller action, display the item the user entered to purchase.
    post '/checkout' do
        @session = session
        @session[:item] = params[:item]
end
end