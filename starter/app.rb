require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
    session[:past_growls] ||= []
end

get '/' do
    erb :index
end

get '/growls' do
    @growl= session[:past_growls]
    erb :growls
end

post '/growls' do
    growls = params[:growlers]

    session[:past_growls].push growls #growls are stored in the past_growls array in the session hash

    redirect '/' #go back to home page
end

# if value in textbox send to cart
# viewing cart is optional on 1st page
# value in text box cannot excede 142 characters

# Routes
# First -> Second page
# create growl
# view history of growls

# return from second to first page


