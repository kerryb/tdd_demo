$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'account'

describe Account do
  describe 'debiting' do
    it 'should reduce the balance by the debit amount' do
      account = Account.new(100)
      account.debit(10)
      account.balance.should == 90
    end
  end
end