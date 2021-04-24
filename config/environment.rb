# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
  address: "herse.dnsherse.com",
  port: 465, 
  domain: "cnery.pt",
  user_name: ENV["EMAIL_USER_NAME"],
  password: ENV["EMAIL_PASSWORD"],
  authentication: "plain",
  :ssl => true,
  :tsl => true,
  enable_starttls_auto: true
  }

