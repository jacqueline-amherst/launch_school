class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end

  def self.hi
    puts "Hello"
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# If we call Hello.hi we get an error message. How would you fix this?

# This is a little tricky. We have to create a class method similar in function to the analogous instance method.
# Unfortunately, the Class can't access the `greet` method defined in the parent class.
# To solve for this I've simply had the class method directly output "Hello" instead of sending it to the parent `greet` method.

Hello.hi