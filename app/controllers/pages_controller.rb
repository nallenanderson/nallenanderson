class PagesController < ApplicationController
	def home
	end

	def contact
		@lead = Lead.new
		
	end
	
end
