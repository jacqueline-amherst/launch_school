# What is the return value of `each_with_object` in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# The return value of `each_with_object` in this example will be:
#   {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
# `each_with_object` always returns its object, in this case a hash.
# `hash[value[0]] = value` creates a key/value pair in which the key is the character at index 0 of value, and the value is value
# This will occur for each of the elements in the original collection, resulting in our new hash.
