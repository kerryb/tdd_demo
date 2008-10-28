$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'account_controller'
require 'account'

describe AccountController do
  describe 'transferring money' do
    before do
      @controller = AccountController.new
      @source = stub_everything Account
      @dest = stub_everything Account
    end
    
    it 'should debit the source account' do
      @source.should_receive(:debit).with 123
      @controller.transfer @source, @dest, 123
    end
    
    it 'should credit the destination account' do
      @dest.should_receive(:credit).with 123
      @controller.transfer @source, @dest, 123
    end
  end
end