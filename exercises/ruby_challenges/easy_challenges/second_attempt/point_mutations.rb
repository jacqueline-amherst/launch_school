=begin

  --- PROBLEM ---

  - given two strings:
   - find the number of characters that are not the same between them
  - if one string is shorter than the other,
    - only deal with the same number of characters from the longer.

  --- ALGORITHM ---

  #initialize(strand)
    - saves `strand`

  #hamming_distance(strand)
    - set `distance` to 0
    - set `max_index` to the size of the shorter strand - 1
    - from 0 up to `max_index`:
      - compare the character at index of both strands
      - if they are different, add 1 to distance
    - return `distance`
=end

class DNA
  attr_reader :master_strand

  def initialize(strand)
    @master_strand = strand
  end

  def hamming_distance(test_strand)
    max_index = [master_strand.size, test_strand.size].min - 1
    distance = 0

    (0..max_index).each do |idx|
      distance += 1 unless master_strand[idx] == test_strand[idx]
    end

    distance
  end
end
