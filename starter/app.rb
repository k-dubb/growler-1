require 'sinatra'
require 'sinatra/reloader'

enable :sessions


before do
session[:past_growls] ||= []

# if value in textbox send to cart
# viewing cart is optional on 1st page
# value in text box cannot excede 142 characters
end


# Routes
get '/' do

# First -> Second page
# create growl
# view history of growls

# return from second to first page
  erb :index
end


get '/growls' do

  erb :growls
    @growl= session[:past_growls]

end
