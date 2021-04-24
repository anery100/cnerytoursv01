class Contact < ActiveRecord::Base
  include MailForm::Delivery

  attributes :name, :email, :message, :form

  def headers
    {
      to: "info@cnery.pt",
      subject: "New contact was sent",
      form: %("#{name}" <#{email}>)
    }
  end
end