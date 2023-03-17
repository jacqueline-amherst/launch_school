# Q1 - What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# A - I would expect this to print out:

1
2
2
3

# I expect this because Array#uniq is a non-mutating method.
# If it had been Array#uniq! instead I would expect only one 2.

-----------------------

# Q2 - Describe the difference between `!` and `?` in Ruby.
# And explain what would happen in the following scenarios:
#
#   1. what is `!=` and where should you use it?
#       This means "not equal to".
#       It could be used in conditional statements
#       i.e.

numbers = [1, 2, 3, 4]

while numbers.length != 0
  puts numbers.shift
end

#   2. put `!` before something, like `!user_name`
#         This will return either `true` or `false`.
#         `true` if the object following it is falsey,
#         `false` if the object is truthy
#
#   3. put `!` after something, like `words.uniq!`
#         This is a naming convention which implies that a method is mutating.
#
#   4. put `?` before something
#         I am not aware of a situation in which this would occur.
#
#   5. put `?` after something
#         This is a naming convention which implies that the method will return either `true` or `false`
#
#   6. put `!!` before something, like `!!user_name`
#         When `!!` is used it will return `true` or `false` in alignment with the object's truthiness.

---------------------------------

# Q3 - Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important", "urgent")

---------------------------------

# Q4 - The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset `numbers` to the original array between method calls)?

numbers.delete_at(1)

# This will delete the number `2` from the array because that is the value at index number 1.

numbers.delete(1)

# This will delete the number `1` from the array.

-------------------------------------

# Q5 - Programmatically determine if 42 lies between 10 and 100.

(10..100).to_a.include?(42)

--------------------------------------

# Q6 - Starting with the string:

famous_words = "Seven years ago..."

# show two different was to put the expected "Four score and" in front of it.

famous_words.prepend("Four score and ")

famous_words = "Four score and " + famous_words

--------------------------------------

# Q7 - If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with a nested array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array.

flintstones.flatten!

-------------------------------------

# Q8 - Given the hash below 

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Create an array containing only two elements: Barny's name and Barney's number.

array = [flintstones.keys[2], flintstones["Barney"]]