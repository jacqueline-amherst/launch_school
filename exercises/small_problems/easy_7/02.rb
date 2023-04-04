# Lettercase Counter
#   Write a method that takes a string and returns a hash that contains 3 entries:
#  one represents the number of characters in the string that lowercase, one the number that are uppercase, and one that are neither
#
# ------------------
# input: string
# output: hash
#
# rules:
#   - spaces are counted as 'neither'
#   - no matter the input there are always 3 k/v pairs
#   - if empty string, all 0
# ----------------

UPPER_CASE = ('A'..'Z').to_a
LOWER_CASE = ('a'..'z').to_a

def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if UPPER_CASE.include?(char)
      result[:uppercase] += 1
    elsif LOWER_CASE.include?(char)
      result[:lowercase] += 1
    else
      result[:neither] += 1
    end
  end
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }