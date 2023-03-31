# What Century is That?:
#   Write a method that takes a year as input and returns the century.
#   The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
#   New centuries begin in years that end with 01, so the years 1901 - 2000 comprise the 20th century.

def add_ordinal(digits)
  last_digit = digits % 10
  if (11..13).include?(digits)
    ordinal = 'th'
  else
    ordinal = case last_digit
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
    end
  end
end

def century(year)
  century, years = year.divmod(100)
  century += 1 unless years == 0
  __, last_two_digits = century.divmod(100)
  ordinal = add_ordinal(last_two_digits)
  century.to_s + ordinal
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# Slightly more verbose than necessary but overall ok.
