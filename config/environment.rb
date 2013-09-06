# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Personal::Application.initialize!

ActionMailer::Base.delivery_method =:smtp

ActionMailer::Base.smtp_settings={	
	:address => "smtp.sendgrid.net",
	:port => 587,
	:domain => "gatech.edu",
	:authentication => :plain,
	:enable_starttls_auto =>true,
	:user_name => "zhang3r"
	:password => "majeh1sam"
	}