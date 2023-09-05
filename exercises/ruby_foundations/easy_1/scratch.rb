cipher = {}

('a'..'m').to_a.each_with_index do |char, idx|
  correspondences = ('n'..'z').to_a

  cipher[char] = correspondences[idx]
  cipher[char.upcase] = correspondences[idx].upcase
end

puts cipher

=begin
  - create a key for `char` in ('a'..'m')
  - use the character at the corresponding index of ('n'..'z') as the value
  - do the same for each of the uppercase equivalents
=end