=begin
------------------Understand the Problem------------
 


   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

helper method: `truncate`

given parameter 'content'

- content = content[0..75]


 

--------------------Code With Intent-----------------
=end

def print_in_box(content)
  if content.size >= 76
    content = content[0..75]
  end

  width = content.size
  edge = "+-" + ("-" * width) + "-+"
  center = "| " + (" " * width) + " |"
  message = "| " + content + " |"

  puts edge
  puts center
  puts message
  puts center
  puts edge
end

print_in_box("My very favorite type of candy is choclolate. I love chocolate so much that I must eat it with every meal. If I do not have chocolate at every meal I cry and cannot slee
  p. I fear the possibility of having a chocolate deficiency.")