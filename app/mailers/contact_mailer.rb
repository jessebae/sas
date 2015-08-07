class ContactMailer < ActionMailer::Base
    default to: 'jessebae@sbcglobal.net'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: 'ContactFormMessage')
    end
end