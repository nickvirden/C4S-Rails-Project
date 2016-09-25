class MessagesController < ApplicationController
    def new
        # Refers to Model name, which will be singular
        @message = Message.new
    end

    def create
        @message = Message.new(params[:message])
        
        # @message.request = request

        if @message.valid? 
            #MessageMailer.message_me(@message).deliver_now
            #redirect_to new_message_path
            flash[:alert] = "Thanks for the shout, " + @message.name.to_s + "! I'll be in touch soon."
        else
            render :new
            flash[:alert] = "Yikes! Make sure you filled out everything correctly."
        end

        #if Message.new(params[:message]).deliver
        #    MessageMailer.message_me(@message).deliver_now
        #    redirect_to '/pages/about'
        #    flash[:alert] = 'Thanks! Be in touch soon!'
        #else
        #    flash[:alert] = "There was an error with your submission."
        #    render :new
        #end
    end
end