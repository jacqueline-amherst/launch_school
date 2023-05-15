class Game
  def play
    "Start the game!"
  end
end

class Bingo < Gamer
  def rules_of_play
    #rules of play
  end
end

# What can we add to the Bingo class to allow it to inherit the play method from the Game class?

# We could change line 7 to read `class Bingo < Game`
# The `< Game` in this case denotes that Bingo subclasses from `Game`, and therefore inherits its methods.

puts Bingo.new.play
