class UserMailer < ApplicationMailer
    default from: 'from@example.com'

    def welcome_email(user)
        @user = user@url = 'http://localhost:3000/new'
        mail(to:@user.username, subject: "Hello!")
    end

    def create
        
end
