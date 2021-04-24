class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.new_contact.subject
  #

  def new_contact
    @greeting = "Hi"

    mail to: "anery100@gmail.com"
  end


=begin
default from: "info@cnery.pt"
  
def general_message(contact)
  @contact = contact
  mail( :to => "anery100@gmail.com", :subject => "You Have a Message From Your Website")
end
=end
end
