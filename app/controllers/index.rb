get "/" do
  @events = Event.order("date DESC")
  erb :index
end