require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
    session[:past_growls] ||= []
end

get '/' do
    erb :index
end

#show the form to add a single growl
get '/add' do
    erb :add
end

#show histroy of growls
get '/growls' do
    @growl= session[:past_growls]
    erb :growls
end

#message stating submission was loaded
get '/load_successful' do
    erb :load_successful
end

#add a growl post
post '/add' do
    growls = params[:growlers]

    session[:past_growls].push growls #growls are stored in the past_growls array in the session hash

    redirect '/load_successful'
end

#    redirect '/' #go back to home page

# if value in textbox send to cart
# viewing cart is optional on 1st page
# value in text box cannot excede 142 characters

# Routes
# First -> Second page
# create growl
# view history of growls

# return from second to first page


