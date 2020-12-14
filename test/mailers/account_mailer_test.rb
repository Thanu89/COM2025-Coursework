require 'test_helper'

class AccountMailerTest < ActionMailer::TestCase

  test "enrol success" do
    @account = accounts(:one)
    #@account = Account.create(email: 'test@gmail.com', encrypted_password: 'password', name: 'test')
    email = AccountMailer.with(account: @account).enrol_email
    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ['COM2025@email.com'], email.from
    assert_equal [@account.email], email.to
    assert_equal 'You have successfully enrolled in a class!', email.subject
  end

  test "enrol failure" do
    @account = accounts(:two)

    email = AccountMailer.with(account: @account).enrol_email
    assert_emails 1 do
      email.deliver_now
    end

    assert_not_equal ['test123@email.com'], email.to
  end
end
