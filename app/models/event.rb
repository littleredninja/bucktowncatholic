class Event < ActiveRecord::Base
  def self.upcoming
    where("date >= ?", Date.today).order("date ASC")
  end
end