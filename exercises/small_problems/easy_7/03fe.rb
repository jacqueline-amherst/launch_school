# Come up with two solutions to the previous problem without using #capitalize.
#
# rules:
#   - The first character is the only uppercase letter in each word.
#   - 

#=begin

def word_cap(string)
  words = string.split.map(&:downcase)
  words.each do |word|
    word.downcase!
    first_char = word[0]
    if ('a'..'z').include?(first_char)
      word[0] = (first_char.ord - 32).chr
      word
    end
  end
  words.join(' ')
end

#=end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'