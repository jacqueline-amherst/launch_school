[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.to_i == el   # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

=begin
  
On line 1 #map is called on a nested array.
Each element of the array is consecutively passed into the block defined on lines 1-11 in place of parameter `arr`.
on line 2 #map is called on `arr`.
Each element is passed into the block defined on lines 2-10 in place of parameter `el`.
Lines 3-9 define a conditional statement.
On line 3 the methods #to_s and #to_i are chained on `el`, 
then an equality operator uses the return value of those chained methods and given the argument `el`
#== on line 3 returns a boolean. If it is true, the code on line 4 runs.
On line 4 #+ is called on `el` and given the argument 1.
If this statement is run its return value is used as the return value of the conditional.
If #== on line 3 does not evaluate to `true` then the else clause on lines 6-8 runs.
On line 6 #map is called on `el`. Its elements are passed in to the block on lines 6-8 in place of `n`.
On line 7 #+ is called on `n` and given the argument 1.
This expression evaluates to `n + 1`. Since it's the last expression in the block this is the return value for the block.
#map on line 6 uses this value to perform transformation, returning a new array containing the transformed elements.
The return value of the conditional is the return value of the block on lines 2-10.
#map on line 2 uses this value for transformation and returns a new array.
This array is in turn used as the return value of the block on lines 1-11, and also the basis for transformation used by #map on line 1.
Therefore the return value of this whole expression is a new array in which every value has been incremented by 1:

[[[2, 3], [4, 5]], [6, 7]]
  
end