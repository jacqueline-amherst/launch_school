[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

=begin
  
On line 1 #select is being called on a nested array containing two hashes.
Each element of the array is consecutively passed into the block defined on lines 1-5 in place of the parameter `hash`.
On line 2 #all? is being called on the current value of `hash`.
Each key/value pair of `hash` is consecutively passed into the block defined on lines 2-4 in place of the parameters `key` and `value`.
On line 3 #== is being called on the character at index 0 of `value` with an argument --
Within the argument for #==, #to_s is called on `key`, which returns the value of `key` converted to a string.
The return value of the equality expression on line 3 will return a boolean.
The return value of #all? on line 2 will also return a boolean, `true` only if the block returns `true` on each iteration, `false` if even a single value returns `false`.
The block will short-circuit at the first `false` return, if there is one.
In this case the first `hash` returns `false` and the second returns `true`.
The return value of #select on line 1 is a new collection (array here) that only contains the elements for which the block returns true.
Since `all?` is the last expression evaluated within the outer block, #select will perform its selection based on this return value.
The return value of the #all? has already been determined above,
Therefore #select returns a new array:
[{ c: 'cat' }
  
Further Exploration:

If #any? were used in place of #all?, the return value of the inner block would be `true` for both elements within original array.
Therefore the return value of #select would be a new array identical to the original.

=end