class Event < ActiveRecord::Base
  def self.upcoming
    where("date_and_time >= ?", Date.today).order("date_and_time ASC")
  end

  def time_string
    time.to_s(:db)
  end

  def time_string=(time_str)
    self.date_and_time = Time.parse(time_str)
  rescue ArgumentError
    @time_invalid = true
  end

  def validate
    errors.add(:time, "is invalid")
  end
end