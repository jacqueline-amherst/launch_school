# Staggered Caps (Part I)
#   Write a method that takes a String as an argument, 
# and returns a new String that contains the original value using a staggered capitalization scheme,
# in which every other character is capitalized, and the remaining characters are lowercase.
# Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.
#
# ----------
# input: string
# output: new string
#
# rules:
#   - The first letter and every second letter after are capitalized, the rest lowercase
# 
# -----------
# Given `string`
# - set `index` to -1
# - set `result` to an array of all characters from `string`
# - perform transformation on each `char` of `result`:
#   - if `index` is even, capitalize `char`
#   - if `index` is odd, lowercase `char`
#   - add 1 to `index`
# - join the characters of `result`

def staggered_case(string, first_case = -1)
  index = first_case
  result = string.chars.map do |char|
    index += 1
    index.even? ? char.upcase : char.downcase
  end
  result.join
end

p staggered_case('I Love Launch School!', 0) #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
