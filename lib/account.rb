class Account
  def initialize amount
    @balance = amount
  end
  
  attr_reader :balance
end