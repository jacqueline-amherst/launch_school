# This program is intended to demonstrate the concept of encapsulation in action.
# Encapsulation is the grouping together of and controlling access to behaviors and states that act in tandem to track and mutate data.
# This case demonstrates a real-world application of needing to use method access control.
# The user needs to be able to indirectly change the balance of their account by depositing or withdrawing money,
# but we obviously don't want them to be able to directly set the amount of money in their account!

class BankAccount
  attr_reader :balance     # The way this class is implemented, the getter method does not need to be private

  def initialize(balance)  # in order for the account to contain any money, we need to initialize it here.
    @balance = balance     # The @balance is set automatically, otherwise the user would have direct access to change their balance
  end                      # The value is arbitrary.

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  private                 # access to @balance needs to be private, not protected, otherwise it could be accessed by other instances
  attr_writer :balance    # By adding it here the class instance methods have access to the state of @balance, but only within the class body
end

class SelfServiceEngine
  def initialize
    @my_acct = BankAccount.new(10_000)
  end

  def display_welcome
    system 'clear'
    puts "Welcome to the Bank Account Self-Service Interface!"
  end

  def display_goodbye
    puts "Thank you for using the Bank Account Self-Service Interface! Have a nice day!"
  end

  def enter_menu
    display_balance('current')
    puts "What would you like to do?"
    puts "Withdraw (w)"
    puts "Deposit (d)"
    puts "Check your balance (b)"
    puts "Exit (any other key)"

    response = gets.chomp
    access_menu(response)
  end

  def access_menu(response)
    case response.downcase
    when 'w' then withdraw
    when 'd' then deposit
    end                     # we actually don't need a `check_balance` method because the logic for our program automatically displays the "new" balance
  end

  # For the sake of simplicity we're using only Integers even though this program would need access to formatted Floats if it were real
  def get_amount(action)
    amount = nil
    loop do
      puts "How much would you like to #{action}?"
      puts "Please enter a valid whole dollar amount using only numerical values."
      amount = gets.chomp
      break if amount.to_i.to_s == amount
      puts "I'm sorry, that wasn't a valid whole dollar amount."
    end
    amount.to_i
  end

  def withdraw
    amount = get_amount('withdraw')
    @my_acct.withdraw(amount)
  end

  def deposit
    amount = get_amount('deposit')
    @my_acct.deposit(amount)
  end

  def display_balance(state)
    puts "Your #{state} balance is: #{@my_acct.balance}"
  end

  def another_action?
    puts "Would you like to perform another action?"
    puts "Enter 'y' for yes, or any other key to exit Self Service."
    answer = gets.chomp
    answer == 'y'
  end

  def serve_self
    display_welcome
    loop do
      enter_menu
      display_balance('new')
      break unless another_action?
    end
    display_goodbye
  end
end

SelfServiceEngine.new.serve_self

# 