class AccountMailer < Devise::Mailer
    helper :application
    default from: 'COM2025@email.com'

    def enrol_email
        headers[:field_name] = "Enrolled Successfully!"
        @account = params[:account]
        mail(
            to: @account.email, 
            subject: 'You have successfully enrolled in a class!' 
            )
    end
end
