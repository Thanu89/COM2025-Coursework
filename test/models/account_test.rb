require 'test_helper'

class AccountTest < ActiveSupport::TestCase

  test "should not save invalid account" do
    account = Account.new
    assert_not account.save
  end

  test "should save valid account" do
    account = accounts(:one)
    assert account.save
  end
end
