class SessionsController < ApplicationController
	def new
	end
	def create
		tutor = Tutor.find_by(email: params[:login][:email])
		if tutor && tutor.authenticate(params[:login][:password])
			session[:user_id] = tutor.id.to_s
			redirect_to tutors_path
		else
			redirect_to login_path
		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to login_path
	end
end #end of controller
