$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'account_controller'

describe AccountController do
  describe 'transferring money' do
    it 'should debit the source account'
    it 'should credit the destination account'
  end
end