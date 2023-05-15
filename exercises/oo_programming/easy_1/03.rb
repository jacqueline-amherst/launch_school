# Fix the Program - Books (Part 1)
# Complete this program so that it produces the expected output:

class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)


# Expected output:
# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

# FURTHER EXPLORATION:
#   The difference between `attr_reader`, `attr_writer`, and `attr_accessor` are that `attr_reader` creates a getter method, `attr_setter` creates a setter method, and `attr_accessor` creates both.
# In this particular case we only need the getter method because we're not setting anything at any point.
# If there came a point when we needed to add a setter method we could easily do that, but as it stands adding a setter method would only create the possibility of accidentally changing our data.