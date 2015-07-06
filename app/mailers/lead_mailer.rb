class LeadMailer < ApplicationMailer

	def new_lead(lead)
		@lead = lead
		mail(to: "nate@modyo.com", from: @lead.email, subject: "You've received a message in nallenanderson.com")
	end
end
