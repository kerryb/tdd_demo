$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'spec'
require 'account_controller'

describe AccountController do
  describe "Transferring money between accounts" do
    before do
      @controller = AccountController.new
      @from = stub_everything 'from'
      @to = stub_everything 'to'
    end
    
    def transfer
      @from.should_receive(:debit).with 42
    end
    
    it "should debit the source account" do
      transfer
      @controller.transfer @from, @to, 42
    end
    
    it "should credit the destination account" do
      transfer
      @controller.transfer @from, @to, 42
    end
  end
end