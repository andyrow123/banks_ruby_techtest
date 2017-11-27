require 'date'

class Transaction
  attr_reader :date, :type, :amount

  def initialize(type, amount)
    @date = Date.new
    fail 'Invalid transaction type' unless valid_type?(type)
    @type = type
    fail 'Transaction must be more than 0' unless not_zero?(amount)
    @amount = amount
  end

  private

  def valid_type?(type)
    type == :credit || type == :debit
  end

  def not_zero?(amount)
    amount > 0
  end
end
