# What Century is That?
#   Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number and ends with `st, nd, rd, or th` as appropriate.
# New centuries begin in years that end in 01.
# So, the years 1900-2000 comprise the 20th century.

def determine_ordinal(century)
  last_two_digits = century.divmod(100)[1]
  last_digit = last_two_digits.divmod(10)[1]
  ordinal_ending = ''

  if (11..13).include?(last_two_digits)
    ordinal_ending = 'th'
  else
    case last_digit
    when 1
      ordinal_ending = 'st'
    when 2
      ordinal_ending = 'nd'
    when 3
      ordinal_ending = 'rd'
    else
      ordinal_ending = 'th'
    end
  end

  century.to_s + ordinal_ending
end

def century(year)
  century_number = (year / 100.0).ceil
  determine_ordinal(century_number)
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

