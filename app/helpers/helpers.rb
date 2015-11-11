helpers do
  def stringify_date(event)
    if event.time.strftime("%M") == "00"
      "#{event.date.strftime('%A, %b %-d')} at #{event.time.strftime('%l %P')}"
    else
      "#{event.date.strftime('%A, %b %-d')} at #{event.time.strftime('%l:%M %P')}"
    end
  end
end