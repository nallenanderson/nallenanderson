# Preview all emails at http://localhost:3000/rails/mailers/lead_mailer
class LeadMailerPreview < ActionMailer::Preview
	def new_lead_preview
    LeadMailer.new_lead(@lead)
  end
end
