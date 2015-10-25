get "/" do
  @events = Event.where("date >= ?", Date.today).order("date ASC")
  erb :index
end