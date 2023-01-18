=begin
--------------- UNDERSTAND THE PROBLEM

Palindromic Substrings

  Write a method that returns a list of all substrings of a string that are palindromic.
  That is, each substring must consist of the same sequence of characters forwards and backwards.
  The return value should be arranged in the same sequence as the substrings appear in the string.
  Duplicate palindromes should be included multiple times.
  You should use the substrings method you wrote in the previous exercise.

  Input:
  Output:

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM




--------------- CODE WITH INTENT
=end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0..string.size).each do |start_index|
    this_string = string[start_index..-1]
    results.concat(leading_substrings(this_string))
  end
  results
end

def palindromes(string)
  all_substrings = substrings(string)
  all_palindromes = all_substrings.select do |substring|
    substring.size > 1 && substring == substring.reverse
  end
  all_palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]