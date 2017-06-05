require 'time'

def age_in_days(day, month, year) 
  dob = Date.parse("#{year}/#{month}/#{day}")
  days = Date.today.mjd - dob.mjd

  # Another way
  # days = (Date.today - dob).to_i

  "You have #{days} days buddy"
end

# Testing your code
puts age_in_days(6, 11, 1985)