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
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end


get "/about" do
  erb :about
end

get "/contact" do
  erb :contact
end


get '/new' do
  if logged_in?
    @event = Event.new
    erb :new
  else
    @errors = "Please log in first"
    erb :index
  end
end

post '/add_event' do
  @event = Event.create!(params[:event])
  redirect "/"
end

get "/events/:event_id" do
  @event = Event.find(params[:event_id])
  erb :show
end

get '/events/:event_id/edit' do
  @event = Event.find(params[:event_id])
  erb :edit
end

put '/update_event' do
  event = Event.find(params[:event_id])
  event.update(params[:event])
  redirect "/"
end

delete "/update_event" do
  Event.find(params[:event_id]).destroy
  redirect "/"
end

