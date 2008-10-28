class Account
  def initialize amount
    @balance = amount
  end
  
  attr_reader :balance
  
  def debit amount
    @balance -= amount
  end  
  def credit amount
    @balance += amount
  end
end