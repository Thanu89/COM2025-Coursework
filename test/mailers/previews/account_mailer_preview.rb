# Preview all emails at http://localhost:3000/rails/mailers/account_mailer
class AccountMailerPreview < ActionMailer::Preview

    def enrol_email
        @account = Account.first
        AccountMailer.with(account: @account).enrol_email.deliver_now
    end
end
