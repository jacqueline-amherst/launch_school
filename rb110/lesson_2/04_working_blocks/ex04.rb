my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

=begin
  
On line 1 the variable `my_arr` is initialized and set to the return value of invoking #each on the nested array [[18, 7], [3, 12]].
Once each is called on the array, each element (sub-array) is consecutively passed in to the block in place of the parameter `arr`.
The block runs from lines 1-7.
On line 2 each is called on `arr`, which is the current sub-array.
Each element of `arr` is passed in to the block defined on lines 2-6 in place of the parameter `num`.
Lines 3-5 define an if statement in which the method #> is called on `num` with the argument 5.
On line 4 #puts is invoked with `num` as an argument if the `if` statement criteria is met.
This outputs any num that is greater than 5:
18
7
12
Since #puts is the last expression in the block, `nil` is the block's return value.
However, #each does not consider the return value of its block and simply returns the calling object.
Therefore, the return value of #each on line 2 is the current value of `num`
The return value of #each on line 1 is the original array and so that is the value to which `my_arr` is being bound.
  
end