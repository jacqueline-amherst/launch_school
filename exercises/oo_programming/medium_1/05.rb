class Minilang
  def initialize(commands)
    @commands = commands.split
    @register = 0
    @stack = []
  end

  def eval
    @commands.each do |command|
      command = convert(command)
      case command
      when Integer then set_register(command)
      when *REGISTER_OPS then perform_register_op(command)
      when 'PUSH' then push
      when 'PRINT' then print
      else raise "INVALID TOKEN: #{command}"
      end
    end
  end


  private
  attr_accessor :register, :stack

  REGISTER_OPS = ['ADD', 'SUB', 'MULT', 'DIV', 'MOD', 'POP']

  def perform_register_op(command)
    # begin
    self.register = case command
                    when 'ADD' then register + stack.pop
                    when 'SUB' then register - stack.pop
                    when 'MULT' then register * stack.pop
                    when 'DIV' then register / stack.pop
                    when 'MOD' then register % stack.pop
                    when 'POP' then stack.pop
                    end
    # rescue

    # end
  end

  def set_register(integer)
    self.register = integer
  end

  def push
    stack << register
  end

  def print
    if register.nil?
      puts "Empty Stack!"
    else
      puts register
    end
  end

  def convert(command)
    command =~ /\A[-+]?\d+\z/ ? command.to_i : command
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

# Minilang.new('6 PUSH').eval
# # (nothing printed; no PRINT commands)

=begin
  - convert string given as argument to an array
    '5 PRINT PUSH 3 PRINT ADD PRINT' => ["5", "PRINT", "PUSH", "3", "PRINT", "ADD", "PRINT"]
  - iterate over each element of this array
    - if any of the elements are not valid, raise an exception (INVALID TOKEN: invalid_token)
    - also raise an exception if the stack is empty when it shouldn't be.
  - 
    

  - print "Empty Stack!" if stack empty
=end


# I didn't look at the hint and therefore did not use the `send` method. I have looked into it can see how and why it would be implemented in this case.
# I also still do not have a very solid grasp on how to implement custom exceptions, as this program shows.
