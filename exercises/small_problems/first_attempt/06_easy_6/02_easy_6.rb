# Delete Vowels
#   Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels removed

VOWELS = %w(a e i o u)

def remove_vowels(array)
  array.each do |element|
    element.chars.each do |char|
      element.delete!(char) if VOWELS.include?(char.downcase) 
    end
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']