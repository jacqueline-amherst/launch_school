=begin
--------------- UNDERSTAND THE PROBLEM

Lettercase Counter

  Write a method that takes a string, and then returns a hash that contains 3 entries:
  one represents the number of characters in the string that are lowercase,
  one represents the uppercase letters,
  and one that represents the number of characters that are neither.

  Input: string
  Output: hash

  Rules:
    - spaces are counted in the 'neither' category


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES

LOWERCASE = ('a'..'z')
UPPERCASE = ('A'..'Z')


--------------- ALGORITHM

initialize constants, LOWERCASE & UPPERCASE containing their respective alphabets.

define letter_case_count:
  - initialize a hash, counts with the fields `lowercase`, `uppercase` and `neither`, all set to 0
  - iterate over each character of string:
    - if LOWERCASE contains character, add to `lowercase` field of hash
    - same for uppercase
    - if character doesn't fit into either, store in `neither`
  - return `counts` hash


--------------- CODE WITH INTENT
=end

LOWERCASE = ('a'..'z')
UPPERCASE = ('A'..'Z')

def letter_case_count(str)
  counts = {lowercase: 0, uppercase: 0, neither: 0}
  str.chars.each do |char|
    if LOWERCASE.include?(char)
      counts[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }