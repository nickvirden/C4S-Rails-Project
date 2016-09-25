class MessageMailer < ActionMailer::Base

    default from: 'nickvirden@gmail.com'
    
    include MessagesHelper

    def message_me(msg)
    
        @msg = msg
    
        mail to: @msg.email, subject: @msg.subject, body: @msg.content
    end

end