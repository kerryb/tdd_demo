$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'spec'
require 'account'
require 'account_controller'

Given /^an account called '(\w*)' containing £(\d*)$/ do |name, amount|
  @@accounts ||= {}
  @@accounts[name] = Account.new(amount.to_i)
end

When /^I transfer £(\d*) from (\w*) to (\w*)$/ do |amount, from, to|
  AccountController.new.transfer @@accounts[from], @@accounts[to], amount.to_i
end

Then /^the '(\w*)' account should contain £(\d*)$/ do |name, amount|
  @@accounts[name].balance.should == amount.to_i
end
