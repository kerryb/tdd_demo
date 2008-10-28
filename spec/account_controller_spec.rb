$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'account_controller'
require 'account'

describe AccountController do
  describe 'transferring money' do
    it 'should debit the source account' do
      source = mock Account
      dest = mock Account
      source.should_receive(:debit).with 123
      AccountController.new.transfer source, dest, 123
    end
    
    it 'should credit the destination account'
  end
end