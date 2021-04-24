class ContactController < ApplicationController
  
=begin  
  require 'mail_form'
  def def new
    @contact=Contact.new
  end

  def def create
    @contact = Contacts.new(contact_attributes)
      if @contact.deliver
        redirect_to new_contact_path: "Thank you"
      else
        flash.now[:error] = "please correct the form"
        render :new  
  end
=end
  require 'mail_form'

  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    
    if @contact.deliver
      #ContactsMailer.general_message(@contact).deliver
      redirect_to new_contact_path, alert: "Thank you..."
      #render :thanks
    else
      flash.now[:error] = "Please correct the form"
      render :new
    end
  end

  def thanks
  end

end