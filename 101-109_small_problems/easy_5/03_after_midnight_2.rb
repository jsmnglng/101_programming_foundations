# As seen in the previous exercise, the time of day can be represented as the number of 
# minutes before or after midnight. If the number of minutes is positive, the time is 
# after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number 
# of minutes before and after midnight, respectively. Both methods should return a value 
# in the range 0..1439.

# You may not use ruby's Date and Time methods.
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  delta_minutes = (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
  delta_minutes
end

def before_midnight(time)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time) 
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  p delta_minutes
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0