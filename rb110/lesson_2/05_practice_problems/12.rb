# Given the following data structure and without using the Array#to_h method, 
# write some code that will return a hash were the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = arr.each_with_object({}) do |element, hash|
  hash[element[0]] = element[1]
end

p hsh == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}