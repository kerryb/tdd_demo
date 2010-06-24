class Account
  attr_reader :balance

  def initialize amount
    @balance = amount
  end

  def debit amount
    @balance -= amount
  end

  def credit amount
    @balance += amount
  end
end
