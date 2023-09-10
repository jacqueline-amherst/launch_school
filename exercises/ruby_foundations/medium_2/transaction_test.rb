require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def setup
    @register = CashRegister.new(0)
    @transaction = Transaction.new(20)
  end

  def test_prompt_for_payment
    input = StringIO.new("20\n")
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(20, @transaction.amount_paid)
  end
end