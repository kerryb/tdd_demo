$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'spec'
require 'account'

describe Account do
  before do
    @account = Account.new 100
  end
  
  describe 'debiting' do
    it 'should decrease the balance by the debited amount' do
      @account.debit 10
      @account.balance.should == 90
    end
  end
  
  describe 'crediting' do
    it 'should increase the balance by the credited amount' do
      @account.credit 10
      @account.balance.should == 110
    end
  end
end
