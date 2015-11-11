require 'rubygems'
require 'sinatra'

get "/" do
  @events = Event.upcoming
  erb :index
end





post '/login' do
  @events = Event.upcoming
  user = User.find_by(email: params[:email])

  if user == nil
    @errors = "Please enter a valid email and password"
    erb :index
  elsif user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/"
    # TODO: Add flash success message here.
  else
    @errors = "Invalid password"
    erb :index
    raise "hi"
  end
end

get '/logout' do
  session[:user_id] = nil
  erb :index
end


get "/about" do
  "We are J35"
end

get "/contact" do
  "Contact J35"
end


get '/new' do
  @event = Event.new
  erb :"/new"
end

post '/add_event' do
  @event = Event.create!(params[:event])
  redirect "/"
end

get "/:event_id" do
  @event = Event.find(params[:event_id])
  erb :show
end
