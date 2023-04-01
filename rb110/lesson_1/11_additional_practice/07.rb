# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
letters = statement.chars.uniq.sort
frequency = {}

letters.each do |letter|
  freq = statement.count(letter)
  frequency[letter] = freq
end

p frequency
