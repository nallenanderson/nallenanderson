class PagesController < ApplicationController
	def home
	end

	def explainrails
	end

	def projects
	end

	def about
	end

	def contact
		@lead = Lead.new
		#respond_to do |format|
      #format.html { redirect_to root_path, notice: '¡Gracias por el mensaje!' }
      #format.json { head :no_content }
    #end
	end
	
end
