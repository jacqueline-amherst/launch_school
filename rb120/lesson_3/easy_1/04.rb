# If we have a class AngryCat how do we create a new instance of this class?
#   The AngryCat class might look something like this:

class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

# A new instance can be created by calling #new on the class like this:

AngryCat.new

# This way of creating an object is just kind of free-floating, so we probably want to store the object in a variable like this:

madcat = AngryCat.new