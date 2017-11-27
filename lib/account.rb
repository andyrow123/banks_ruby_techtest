class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def credit(transaction)
    fail 'Amount can not be below zero' if below_zero?(transaction.amount)
    @balance += transaction.amount
  end

  def debit(transaction)
    fail 'Amount can not be below zero' if below_zero?(transaction.amount)
    @balance -= transaction.amount
  end

  private

  def below_zero?(amount)
    amount < 0
  end
end
