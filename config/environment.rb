# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'mail'
# Initialize the Rails application.
Personal::Application.initialize!
ActionMailer::Base.delivery_method= :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => 'zhang3r',
  :password => 'majeh1sam',
  :domain => 'gatech.edu',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}