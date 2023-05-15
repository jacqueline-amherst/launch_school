# What would happen if we added a play method to the Bingo class, 
# keeping in mind that there is already a method of this name in the Game class that the Bingo class inherits from.

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end

  def play
    super + " Bingo!"
  end
end

puts Bingo.new.play

# If we add a `play` method to the Bingo class, it will "shadow" the parent method because it will come earlier in the lookup chain for Bingo.
# So when we call `play` on an instance of Bingo, it will call the method of its own class instead that of its parent.
# In this example I've added a call to the `super` method in the Bingo `play` method, which will call the parent method and combine it with the new functionality.
