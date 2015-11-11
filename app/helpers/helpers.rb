helpers do
  def stringify_date(event)
    if event.date_and_time.strftime("%M") == "00"
      "#{event.date_and_time.strftime('%A, %b %-d')} at #{event.date_and_time.localtime("-06:00").strftime('%l %P')}"
    else
      "#{event.date_and_time.strftime('%A, %b %-d')} at #{event.date_and_time.localtime("-06:00").strftime('%l:%M %P')}"
    end
  end
end