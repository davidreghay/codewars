def evaporator(content, evap_per_day, threshold)
  content = 1
  evap_per_day *= 0.01
  to_subtract = evap_per_day
  threshold *= 0.01
  days = 0
  while(true) do
    content -= to_subtract
    to_subtract = content * evap_per_day
    days += 1
    break if content <= threshold
  end
  days
end
