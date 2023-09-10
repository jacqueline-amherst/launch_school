require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

 class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(0)
    @transaction = Transaction.new(20)
  end

  def test_accept_money
    @transaction.amount_paid = 20
    @register.accept_money(@transaction)
    assert_equal(20, @register.total_money)
  end

  def test_change
    @transaction.amount_paid = 30
    assert_equal(10, @register.change(@transaction))
  end

  def test_give_receipt # output requires newline because of `puts`
    assert_output("You've paid $20.\n") do 
      @register.give_receipt(@transaction)
    end
  end

 end
