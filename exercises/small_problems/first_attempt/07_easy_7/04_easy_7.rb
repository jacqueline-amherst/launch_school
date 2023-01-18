=begin
--------------- UNDERSTAND THE PROBLEM

Swap Case:

  Write a method that takes a string as an argument and returns a new string
  in which every uppercase letter is replaced by its lowercase version,
  and every lowercase letter by its uppercase version.
  All other characters should be unchanged.

  You may not use String#swapcase

  Input: string
  Output: new string

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- separate string into its constituent words
- separate words into constituent letters
- iterate over each letter:
  - if it is a letter:
    - if it is upcase:
      - swap to downcase
    - if it is downcase
      - swap to upcase
  - join the letters back into words
  - join the words back into string
- return new string


--------------- CODE WITH INTENT
=end

def swapcase(str)
  words_array = str.split
  words_array.map! do |word|
    word.chars.each do |letter|
      if letter =~ /[a-z]/
        letter.upcase!
      elsif letter =~ /[A-Z]/
        letter.downcase!
      end
    end.join
  end
  words_array.join(' ')
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'

# While I did get this eventually, I struggled to figure out where I was going wrong.
# I'm also not sure if chaining using the `end` keyword is really appropriate or not...

# Also now looking at the given solution it seems that I have over-complicated.
# There was no real need to nest `map!` and `each`