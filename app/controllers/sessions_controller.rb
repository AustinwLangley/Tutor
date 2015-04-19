class SessionsController < ApplicationController
	def new
	end
	def create
		tutor = Tutor.where(email: params[:login][:email]).first
		if tutor && tutor.authenticate(params[:login][:password])
			session[:tutor_id] = tutor.id.to_s
			redirect_to new_report_path
		else
			redirect_to login_path
		end
	end

	def destroy
		session.delete(:tutor_id)
		redirect_to login_path
	end
end #end of controller
