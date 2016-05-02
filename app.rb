require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Event < ActiveRecord::Base
end

get'/' do
  @events = Event.all
  erb :index
end