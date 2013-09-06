class PagesController < ApplicationController
	helper_method :sendEmail

	def sendEmail
		 UserMailer.welcome_email.deliver
	end

	def home
	end

	def news
	end

	def whoami
	end

	def jobs
	end

	def contactme		
		sendEmail
		puts "email was sent"
	end
	
end
