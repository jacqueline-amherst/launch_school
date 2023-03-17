# Q1 - Write a on-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right

(0..10).each { |it| puts "#{' ' * it}The Flintstones Rock!" }

----------------------

# Q2 - The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix it?

# A - `(40 + 2)` results in an integer, which cannot be appended to the string.
# In order to fix this, `(40 + 2)` needs to be converted to a string.
# Two solutions:

puts "the value of 40 + 2 is " + (40 + 2).to_s # conversion

puts "the value of 40 + 2 is #{40 + 2}" # interpolation

-----------------------

# Q3 - Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# Alyssa noticed that this will fail if the input is 0 or a negative number, and asked Alan to change the loop. 
# How can you make this work without using the `begin / end until` construct?
# Note that we're not looking to find the factors for 0 or negative numbers, but we want to handle it gracefully 
# instead of raising an exception or going into an infinite loop.

def factors(number)
  divisor = number
  factors = []

  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end

# The reason for `if number % divisor == 0` is to make sure only actual factors are making it in.
#   If there were a remainder, it would not be a factor.

# The purpose of `factors` on the second-to-last line is to make sure that `factors` is the return value of the method.

-------------------------

# Q4 - Alyssa was asked to write an implementation of a rolling buffer.
# Elements are added to the rolling buffer and if the buffer becomes full, then the new elements that are added will displace the oldest elements int the buffer.
# She wrote two implementations saying, "Take your pick. Do you like `<<` or `+` for modifying the buffer?"
# Is there a difference between the two, other than what operator she chose to use to concatenate an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# There is a difference between the two. Using `<<` will mutate the caller, adding an element to the array.
#   Using `+` will not mutate the caller.

----------------------------

# Q5 - Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator.
#   A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.
#   Ben codud up this implementation but complained that as soon as he ran it, he got an error.
#   Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# The variable `limit` cannot be accessed within the method definition.
#   Method definitions create their own scope and can only access variables initiated within them or that have been passed in to their parameters.
#   This could be fixed by adding another parameter, `limit`, and passing in the limit.

--------------------------

# Q6 - What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# The output is `34`. The `mess_with_it` method uses `+=`, which does not mutate the caller.

--------------------------

# Q7 - One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# After writing this method he typed the following... and before Grandpa could stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)

# Did the family's data get ransacked? Why or why not?

# A - Yes, the family's data did get ransacked. Although this is re-assignment, the values of the hash are being operated on directly, which allows them to be permanently re-assigned.

-----------------------------

# Q8 - Method calls can take expressions as arguments. Suppose we define a method called `rps` as follows,
#   which follows the classic rules of rock-paper-scissors game:
#   it returns the winning fist or, in the case of a tie, the fist that both players played.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

#What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# A - "paper"

------------------------

# Q9 - Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# A - 'no'
#   `foo` returns "yes". So this is the same as passing "yes" in to `bar`, which results in "no"
