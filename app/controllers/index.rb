require 'rubygems'
require 'sinatra'

get "/" do
  @events = Event.upcoming
  erb :index
end
