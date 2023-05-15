# Modify this class so new will optionally let you specify a fixed banner width at the time the Banner object is created. 
# The message in the banner should be centered within the banner of that width. 
# Decide for yourself how you want to handle widths that are either too narrow or too wide.

=begin
------------------ UNDERSTAND THE PROBLEM ------------------

INPUT: integer
OUTPUT:
RULES:
  -  

---------------------- DATA STRUCTURES ---------------------



------------------------ ALGORITHM ------------------------ 

- Add an optional `fixed_width` parameter to the constructor method
  - if not provided, default to the width of @message + 2
  - 

--------------------- CODE WITH INTENT ---------------------
=end

class Banner
  def initialize(message, width=message.size)
    @message = message[0...width]
    @size = width + 2
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+" + ("-" * @size) + "+"
  end

  def empty_line
    "|" + (" " * @size) + "|"
  end

  def message_line
    half_width = (@size - @message.size) / 2
    "|" + (" " * half_width) + @message + (" " * half_width) + "|"
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 76)
puts banner

banner = Banner.new('', 17)
puts banner