# Using the `each` method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = hsh.each_with_object([]) do |(_, values), arr|
  values.each do |str|
    str.chars.each do |char|
      arr << char if ('aeiouAEIOU').include?(char)
    end
  end
end

p vowels
