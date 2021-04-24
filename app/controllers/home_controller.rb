class HomeController < ApplicationController
  skip_before_action :authenticate_user! 

  def index
    @contact = Home.new(params[:home])
  end

  def create
    @contact = Home.new(params[:home])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Home object for cleared form
        @contact = Home.new
        format.html { render 'home'} #index
        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'home' } #index
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
    end
  end

  
end