=begin
--------------- UNDERSTAND THE PROBLEM

Right Triangles:

  Write a method that takes a positive integer, `n` as an argument,
  and displays a right triangle whose sides each have `n` stars.
  The hypotenuse of the triangle should have one end at the lower-left of the triangle,
  and the other end at the upper right.

  Input: integer
  Output: a triangle of asterisks

  Rules:
    - hypotenuse runs lower left to upper right
    - integer argument determines width and height of triangle


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES

triangle(1)

*

triangle(2)

 *
**

triangle(8)

       *
      **
     ***
    ****
   *****
  ******
 *******
********


--------------- ALGORITHM

- given one argument, `int`
- initialize `spaces` to (`int` - 1)
- initialize `stars` to 1
- enter a loop for `int` number of iterations:
  - print ' ' `spaces` number of times and '*' `stars` number of times
  - subtract 1 from `spaces`
  - add 1 to `stars`
- end


--------------- CODE WITH INTENT
=end

def triangle(int)
  spaces  = int - 1
  stars = 1

  int.times do
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(3)
triangle(8)

# it's been a while since I've come up with the same answer as given!
