# Stack Machine Interpretation:
#  Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value
# All operations are integer operations (which is only important with DIV and MOD).

# Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs;
# that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

# You should initialize the register to 0.
#
# ------------- Notes
# each argument will have to be dealt with individually.
# ------------- Algorithm
# - set `commands` to an array of the words in argument
# - set `register` to 0
# - set `stack` to []
# - for command in `commands`:
#   - if command is an integer (can be converted to integer to string and is the same)
#     - `register` = command
#   - 

def minilang(string)
  commands = string.split
  register = 0
  stack = []
  commands.each do |command|
    register = command.to_i if command.to_i.to_s == command
    case command
    when 'PUSH' then stack << register
    when 'ADD' then register = register + stack.pop
    when 'SUB' then register = register - stack.pop
    when 'MULT' then register = register * stack.pop
    when 'DIV' then register = register / stack.pop
    when 'MOD' then register = register % stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then p register
    end
  end
end


#
# 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

#minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

#minilang('5 PUSH POP PRINT')
# # 5

#minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

#minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

#minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

#minilang('-3 PUSH 5 SUB PRINT')
# # 8

#minilang('6 PUSH')
# # (nothing printed; no PRINT commands)