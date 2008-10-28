$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'account'
require 'spec'

describe Account do
  describe 'debiting' do
    it 'should reduce the balance by the debit amount' do
      account = Account.new(100)
      account.debit(10)
      account.balance.should == 90
    end
  end
  
  describe 'crediting' do
    it 'should increase the balance by the credit amount' do
      account = Account.new(100)
      account.credit(10)
      account.balance.should == 110
    end
  end
end