require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  
  test 'should not create valid account' do
    account1 = Account.new

    account1.email = 'thanu@gmail.com'
    account1.encrypted_password = 'thanu123'
    account1.name = 'Thanu Yogarajan'

    account1.save
    assert_not account1.valid?
  end
end
