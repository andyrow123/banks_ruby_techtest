class Transaction
  attr_reader :date, :type

  def initialize(type)
    @date = Date.new
    fail 'Invalid transaction type' unless valid_type?(type)
    @type = type
  end

  private

  def valid_type?(type)
    type == :credit || type == :debit
  end
end
