# Q1 - Every object in Ruby has acccess to a method called `object_id`, which returns a numerical value that uniquely identifies the object.
#   This method can be used to deterrmine whether two variables are pointing to the same object.
#   Take a look at the following code and predict the output:

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# A - Objects a and c will have the same object_id, while object b will have a different one.
#   This is because every time a new string literal is initialized it will be a new object with a new id.
#   Therefore objects a and b, point to different objects, both with the the value "forty two", but with unique object_ids.

--------------------------

# Q2- Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# A - All three objects will have the same object_id.
#   This is because integers are immutable objects -- they are always the same object.

-----------------------------

# Q3 - Let's call a method, pass two strings as arguments,
#   and see how they can be treated differently depending on the method invoked on them inside the method definition.
#   Study the following code and state what will be displayed and why.

def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

# A - 
String_arg_one looks like this now: pumpkins
String_arg_two looks like this now: pumpkinsrutabaga

# string_arg_one is not mutated because `+=` is not a mutating method.
#   Within the method, `+=` reassigns `string_param_one`, returning a new String object.
# string_arg_two is mutated because `<<` is a mutating method.
#   Within the method, `<<` mutates the calling object, allowing `string_param_two` and `string_arg_two` to continue pointing to the same object.

--------------------------------

# Q4 - To drive that last one home... let's turn the tables and have the string show a modified output,
#   while the array thwarts the method's efforts to modify the user's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# A - 

My string looks like this now: "pumpkinsrutababga"
My array looks like this now: ["pumpkins"]

# This is the same concept as the last example but with an array.
#   `my_string` is mutated because `<<`, a mutating method, is used.
#   `my_array` remains the same because `=` simply re-assigns the variable `an_array_param`, which doesn't affect `my_array`.

----------------------------------

# Q5 - Depending on a method to modify its arguments can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Whether the above "coincidentally" does what we think we wanted depends upon what is going on inside the method.
#   How can we change this code to make the result easier to predict and easier for the next programmer to maintain?
#   That is, the resulting method should not mutate either argument, but`my_string` should be set to `pumpkinsrutabaga`
#   and `my_array` should be set to `['pumpkins', 'rutabaga']`

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
end

----------------------------------

# Q6 - How could the following method be simplified without changing its return value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# A - 

def color_valid(color)
  color == "blue" || color == "green"
end
