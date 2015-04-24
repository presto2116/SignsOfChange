class StudentsController < ApplicationController
	before_action :find_student, only: [:show, :edit, :update, :destroy]
	
	def index
		@questions = Question.all
	end

	def show
		@question = Question.find(1)
		@student = Student.find( params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		@student= Student.new (student_params)
		if @student.save
			redirect_to student_question_path(@student, 1)
		else
			render :new
		end
	end

	def destroy
		@sign = Sign.find(params[:id])
    @sign.destroy
    redirect_to sign_path("1")
	end

	private
		def find_student
			@student = Student.find( params[:id] )
		end
		def student_params
			params.require(:student).permit(:age, :location, :victim)
		end
end
