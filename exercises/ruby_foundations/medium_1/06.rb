=begin
--- PROBLEM ---

- Given an array of integers
- Return an array of the integers as their base-8 counterpart

--- SCRATCH ---

- This is what we want to happen on last line:

[8, 10, 12, 14, 16, 33].map { |num| num.to_s(8).to_i }

--- ALGORITHM ---


=end


# Replace the two `method_name` placeholders with actual method calls
def convert_to_base_8(n)
  n.to_s(8).to_i
end

# Replace `argument` with the correct argument below
# `method` is `Object#method`, not a placeholder
base8_proc = method(:convert_to_base_8).to_proc

# We'll need a Proc object to make this code work
# Replace `a_proc` with the correct object
p [8, 10, 12, 14, 16, 33].map(&base8_proc) # => [10, 12, 14, 16, 20, 41]

=begin
  NOTE: I finished this exercise on my own without looking at the "Approach/Algorithm" hint!

  It seems like when a method that takes an argument is converted to a proc,
  the calling object is automatically passed in as an argument...
=end