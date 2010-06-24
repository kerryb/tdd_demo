require "spec_helper"

describe Account do
  describe "debiting" do
    it "reduces the balance by the specified amount" do
      account = Account.new 100
      account.debit 10
      account.balance.should == 90
    end
  end

  describe "crediting" do
    it "increases the balance by the specified amount" do
      account = Account.new 100
      account.credit 10
      account.balance.should == 110
    end
  end
end
