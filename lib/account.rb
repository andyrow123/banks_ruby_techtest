class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(transaction)
    fail 'Amount can not be below zero' if below_zero?(transaction.amount)
    @transactions.push(transaction)
    @balance += transaction.amount
  end

  def withdraw(transaction)
    fail 'Amount can not be below zero' if below_zero?(transaction.amount)
    @balance -= transaction.amount
  end

  private

  def below_zero?(amount)
    amount < 0
  end
end
