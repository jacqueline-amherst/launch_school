=begin

=begin
--- PROBLEM ---

- input: array
- output: new array

  - rules:
    - method yields array to a block
    - block parameters ignore first two elements
    - remaining elements stored in new `raptors` array

--- SCRATCH ---

--- ALGORITHM ---


=end

def select_raptors(array)
  yield(array)
end

birds = %w(raven finch hawk eagle)

select_raptors(birds) { |_, _, *raptors| puts "Raptors: #{raptors.join(', ')}" }