# Spin Me Around In Circles:
#   You are given a method name `spin_me` that takes a string as an argument and
# returns a string that contains the same words but with each word's characters reversed.
# Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# This method returns a new string because even though the destructive `reverse!` is called,
# str is not being operated on directly. On line 7 `each` is being called on the return value of `split`, which is a new array.
# at that point str is no longer accessible.
