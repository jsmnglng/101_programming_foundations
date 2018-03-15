# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with
# 'st', 'nd', 'rd', or 'th' as appropriate for that number.

#  New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: number (year)
# Output: string (century)
# Rules:
# -new centuries begin in years that end with 01
# -the century number outputs should end with 'st' 'nd' 'rd' or 'th'

# EXAMPLE / TEST CASE
# Input: 2000
# Output: "20th"

# Input: 2001
# Output: "21st"

# Input: 1965
# Output: "20th"

# Input: 256
# Output: "3rd"

# Input: 5
# Output: "1st"

# Input: 10103
# Output: "102nd"

# Input: 1052
# Output: "11th"

# Input: 1127
# Output: "12th"

# Input: 11201
# Output: "113th"

# DATA STRUCTURE
# number

# ALGORITHM
# Determine what century is year
# 1. Create a variable called "century" equal to 0
# 2. if year / 100 results to remainder of 0,
#      -century = year / 100
#    else,
#      -century = (year / 100) + 1
# 3. Append 'st', 'nd', 'rd', or 'th' to century
# 4. Return century

# Append 'st', 'nd', 'rd' or 'th' to century
# 1. Get the rightmost digit/s of century
#    -In the case of 11, 12 and 13 as last digits,
#       -append 'th'
#    -In the case of 1, 2, 3 as last digits,
#       - append 'st' to 1
#       - append 'nd' to 2
#       - append 'rd' to 3
#    -else, append 'th'
# 2. Return suffix

# CODE
def century(year)
  century = if year % 100 == 0
              year / 100
            else
              year / 100 + 1
            end
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  case century % 100
  when 11, 12, 13 then 'th'
  else
    case century % 10
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
    end
  end
end

# or
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
p century(3300)
p century(10500)
