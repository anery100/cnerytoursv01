class Home < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :contact,   :validate => true
  attribute :message
  

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form - CNeryTours Site",
      :to => "info@cnery.pt",
      :from => %("#{name}" <#{email}>)
    }
  end
end