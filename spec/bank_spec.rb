require 'spec_helper'

describe Bank do
  before do
    @bank = Bank.new
  end

  describe "Transferring money" do
    before do
      @source_account = mock :source_account, :debit => true
      @destination_account = mock :destination_account, :credit => true
      @amount = 123
    end

    def do_transfer
      @bank.transfer @source_account, @destination_account, @amount
    end

    it "debits the source account" do
      @source_account.should_receive(:debit).with(@amount)
      do_transfer
    end

    it "credits the destination account" do
      @destination_account.should_receive(:credit).with(@amount)
      do_transfer
    end
  end
end

describe "Integration test" do
  it "works!" do
    source_account = Account.new 100
    destination_account = Account.new 20
    bank = Bank.new
    bank.transfer source_account, destination_account, 50
    source_account.balance.should == 50
    destination_account.balance.should == 70
  end
end
