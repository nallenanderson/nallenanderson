class LeadsController < ApplicationController

	def index
		@lead = Lead.all
	end

	def create
		@lead = Lead.new lead_params
		if @lead.save
			redirect_to contact_path, notice: "Gracias por el mensaje.  Estaremos en contacto! Si necesitas ponerte en contacto ahora mismo, usa los datos a la derecha."
		else
			redirect_to contact_path, alert: "La cagaste mal...inténtalo de nuevo."
		end
	end

	private

	def lead_params
		params.require(:lead).permit(:name, :email, :notes)
	end
end
