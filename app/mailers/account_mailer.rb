class AccountMailer < Devise::Mailer
    helper :application
    default from: 'thanuyogarajan80@gmail.com'

    def enrol_email
        headers[:field_name] = "Enrolled Successfully!"
        @account = params[:account]
        mail(
            to: @account.email, 
            subject: 'You have successfully enrolled in a class!' 
            )
    end
end
