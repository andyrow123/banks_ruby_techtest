require 'date'

class Statement
  attr_reader :transactions, :start_date, :end_date

  def initialize(transactions, start_date, end_date)
    @transactions = transactions
    @start_date = Date.parse(start_date)
    @end_date = Date.parse(end_date)
  end
end
