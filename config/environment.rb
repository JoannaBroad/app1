# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.default_url_options = { :host => 'debs-cards.herokuapp.com' }
config.action_mailer.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: "debs-cards.herokuapp.com",
  authentication: "plain",
  enable_starttls_auto: true,
  user_name: ENV["GMAIL_SMTP_USER"],
  password: ENV["GMAIL_SMTP_PASSWORD"]
}
