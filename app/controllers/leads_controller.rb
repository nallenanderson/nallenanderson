class LeadsController < ApplicationController
	before_action :set_lead, only: [:show, :edit, :update, :destroy]

	def index
		@lead = Lead.all
	end

	def new
	end

	def create
		@lead = Lead.new lead_params
		if @lead.save
			redirect_to contact_path, notice: "Gracias por el mensaje.  Estaremos en contacto! Si necesitas ponerte en contacto ahora mismo, usa los datos a la derecha."
			LeadMailer.new_lead(@lead).deliver_later
		else
			redirect_to contact_path, alert: "No pudimos guardar tus respuestas.  Por favor intenta de nuevo."
		end
	end

	def destroy
	  @lead.destroy
	  respond_to do |format|
	    format.html { redirect_to leads_url, notice: 'Lead was successfully deleted.' }
	    format.json { head :no_content }
	  end
	end

	private

	def set_lead 
		@lead = Lead.find(params[:id])
	end

	def lead_params
		params.require(:lead).permit(:name, :email, :notes)
	end
end
