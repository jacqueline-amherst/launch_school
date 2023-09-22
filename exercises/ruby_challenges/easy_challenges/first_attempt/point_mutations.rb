=begin
--- PROBLEM ---

-- METHOD: hamming_distance(distance) --

- input: string
- output: integer

  - rules:
    - input string represents a DNA strand
    - input is compared against `@strand`
    - output integer represents the number of characters that do not match up between the two strings
      - i.e. 'ABC' & 'ABB' would output `1` because the third character of the two is not identical
    - if one string is longer than the other:
      - compare using only the same number of characters from both strings
      - the longer string is not mutated
    - if both strings are empty OR identical:
      - output `0`

  -- #normalize_length

  - input: two strings
  - output: an array

    - rules:
      - the output array contains new copies of the two input strings
      - if the two strings are the same length:
        - output array contains strings identical to the originals
      - if the strings are of different lengths:
        - the characters of the longer string that exceed the length of the shorter are removed
        - the output array contains two strings of the same length

--- SCRATCH ---

--- ALGORITHM ---

- #initialize(strand)
  - set `@strand` to `strand`

- #hamming_distance(distance)
- initialize `mismatches` to `0`
    - set new variables `strand1` and `strand2` by calling #normalize_lengths
    - iterate over both strands using index number:
      - any time they don't match up add 1 to `mismatches`
    - return `mismatches`

  - #normalize_lengths(distance)
    - compare the input distance and the stored strand:
    - if one is smaller than the other:
      - find the size of the smaller one
        - sort the strings by length
        - find the size of the shorter one
        - transform the longer string to be the same size as the shorter
      - return an array containing the two strings, of same size
=end

class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(distance)
    strand1, strand2 = normalize_lengths(distance)
    mismatches = 0
    strand1.chars.each_index do |idx|
      mismatches += 1 unless (strand1[idx] == strand2[idx])
    end
    mismatches
  end

  def normalize_lengths(distance)
    array = [distance.clone, strand.clone].sort_by { |a| a.length }
    length = array[0].length - 1
    array[1] = array[1][0..length]
    array
  end
end

dna = DNA.new('GAGCC')
p dna.hamming_distance('AGA')

=begin
  NOTES:
  - Again, I didn't consult the hints, etc. in the problem, and I'm pretty happy with my algorithm,
    although it didn't occur to me that I could use a ternary operator to find the shorter string.
    Ultimately, I did a lot more work than necessary, but at least it works!
    Again, if I had thought just a little more about the ways I could have accomplished this it could have been simpler...
=end