require 'date'

class Statement
  attr_reader :transactions, :start_date

  def initialize(transactions, start_date)
    @transactions = transactions
    @start_date = Date.parse(start_date)
  end
end
