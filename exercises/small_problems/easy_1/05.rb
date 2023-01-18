=begin
------------------Understand the Problem------------
 
Bannerizer:

  Write a method that will take a short line of text, and print it within a box.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

Given parameter, `content`

- initialize `width` set to the length of `content`
- initialize `edge` set to : "+-" + ("-" * `width`) + "-+"
- initialize `center` set to : "| " + (" " * `width`) + " |"
- initialize `message` set to : "| " + `content` + " |"
- print `edge`
- print `center`
- print `message`
- print `center`
- print `edge`

 

--------------------Code With Intent-----------------
=end

def print_in_box(content)
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

print_in_box('To boldly go where no one has gone before')
print_in_box('')