$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'account_controller'
require 'account'

describe AccountController do
  describe 'transferring money' do
    it 'should debit the source account' do
      source = mock Account
      dest = stub_everything Account
      source.should_receive(:debit).with 123
      AccountController.new.transfer source, dest, 123
    end
    
    it 'should credit the destination account' do
      source = stub_everything Account
      dest = mock Account
      dest.should_receive(:credit).with 123
      AccountController.new.transfer source, dest, 123
    end
  end
end