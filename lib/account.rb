class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    @balance -= amount
  end
end
