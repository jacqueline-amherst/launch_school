class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# What happens in each of the following cases:
# case 1:

# hello = Hello.new
# hello.hi

# Outputs "Hello"

# case 2:

# hello = Hello.new
# hello.bye

# There will be a NoMethod error.
# Peer classes do not share methods. 
# While `Hello` and `Goodbye` both subclass from `Greeting`, the only behaviors they share are those of their parent, not of each other.

# case 3:

# hello = Hello.new
# hello.greet

# This time we will get an error for having the wrong number of arguments.
# Although the Hello class has access to the `greet` method, that method requires 1 argument and there is no default value.

# case 4:

hello = Hello.new
hello.greet("Goodbye")

# This one will display "Goodbye".
# `hello` has access to the `greet` method and has given the correct number of arguments.
# It has the same effect as a `Goodbye` object calling that class' `bye` method because it is functionally performing the same action (passing "Goodbye" as an argument to the `greet` method)

# case 5:

Hello.hi

# This will product a NoMethod error as well.
# There is no Class method for `hi`, only an instance method, so it cannot be called directly on the Class in this way.
