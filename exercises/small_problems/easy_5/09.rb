# ddaaiillyy ddoouubbllee:
#   Write a method that takes a string argument and returns a new string that contains the value of the original string
# with all consecutive duplicate character collapsed into a single character.
# You may not use String#squeeze

def crunch(string)
  result = ''
  string.chars.each { |char| result << char unless result[-1] == char }
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''