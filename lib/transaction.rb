class Transaction
  attr_reader :date, :type, :amount

  def initialize(type, amount)
    @date = Date.new
    fail 'Invalid transaction type' unless valid_type?(type)
    @type = type
    @amount = amount
  end

  private

  def valid_type?(type)
    type == :credit || type == :debit
  end
end
