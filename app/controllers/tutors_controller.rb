class TutorsController < ApplicationController

	def index
		@tutors = Tutor.all
	end

	def new
		@tutor = Tutor.new
	end

	def create
		@tutor = Tutor.new(tutor_params)
		if @tutor.save
			redirect_to tutors_path
		else	
			render :new
		end
	end

private

	def tutor_params
		params.require(:tutor).permit(:name, :email, :password)
	end
end #end of controller
