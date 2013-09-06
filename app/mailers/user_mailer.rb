class UserMailer < ActionMailer::Base
  include SendGrid
  sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentrack
  sendgrid_unique_args :key1 => "value1", :key2 => "value2"
  default from: "zhang3r@gatech.edu"

  def welcome_email
  sendgrid_category "Welcome"
    sendgrid_unique_args :key2 => "newvalue2", :key3 => "value3"
    mail :to => 'zhang3rz@gmail.com', :subject => "Welcome to my site :-)"
  end
end
