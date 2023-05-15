# Fix the Program - Books (Part 2):

class Book
  attr_accessor :title, :author

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# Expected output:
# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

# FURTHER EXPLORATION:
#   As far as I am awawre, the only benefit to writing a custom accessor method would be if you wanted to add extra functionality to that method.
# If all you need to do is 'get' or 'set', then there is no reason to write a custom method, as it will only take up space and add bulk to your code.
# It could be beneficial to write a plain custom accessor method if you're anticipating needing more functionality in the future but aren't ready to write that logic yet, also.