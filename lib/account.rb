class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def credit(amount)
    fail 'Amount can not be below zero' if below_zero?(amount)
    @balance += amount
  end

  def debit(amount)
    fail 'Amount can not be below zero' if below_zero?(amount)
    @balance -= amount
  end

  private

  def below_zero?(amount)
    amount < 0
  end
end
