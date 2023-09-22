=begin
--- PROBLEM ---

  #initialize(series)
    - takes a string, stores as variable

  #slices(length)
    - input: integer
    - output: nested array

      - rules:
        - throws ArgumentError if length is greater than size of series
        - all slices are consecutive
        - length is the length of each slice
        - output nested array contains sub-arrays, each containing integers

--- EXAMPLES ---

  '37103'.slices(2) => [[3, 7], [7, 1], [1, 0], [0, 3]]

--- DATA STRUCTURES ---

  - `series` is saved as a string
  - output of `slices` is an array:
    - the characters of series are converted to integers to add to subarrays
    - i.e. '3710' becomes [3, 7, 1, 0, 3]

--- ALGORITHM ---

#initialize(series)
  - takes series and saves as variable

#slices(length)
  - throw ArgumentError if length is greater than the size of series
  - convert series to an array of integers i.e. '312' = [3, 1, 2]
  - create empty array to store result
  - iterate from index 0 to the size of series array - (length + 1)
    - add slice from current index, of length to result
  - return the result

=end

class Series
  attr_reader :series

  def initialize(series)
    @series = series
  end

  def slices(length)
    raise ArgumentError if length > series.size
    series_array = series.chars.map(&:to_i)
    result = []
    
    0.upto(series.size - length) do |index|
      result << series_array[index, length]
    end

    result
  end
end