# Ben asked Alyssa to code review the following code:

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

# Alyssa glanced over the code quickly and said - 
# "It looks fine, except that you forgot to put the @ before balance when you refer to the balance instance variable in the body of the positive_balance? method."

# "Not so fast", Ben replied. "What I'm doing here is valid - I'm not missing an @!"

# Who is right, Ben or Alyssa, and why?

# Ben is right, what he's doing is valid.
# The discrepency between the two is because Ben is intending to use the getter method for @balance, which is defined after `attr_reader`.
# Using the getter method for the purpose of comparison is perfectly valid.
# The return value of the getter method is the value of the @balance variable.
# Alyssa is suggesting directly comparing the @balance variable instead of calling the getter method.
# While both work, it is better to use the getter method for comparison because it has already been defined and makes for cleaner code.
