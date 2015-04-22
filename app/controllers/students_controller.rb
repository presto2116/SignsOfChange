class StudentsController < ApplicationController

	before_action :find_student, only: [:show, :edit, :update, :destroy]
	def index

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
			redirect_to student_path(@student)
		else
			render :new
		end
	end

	def edit

	end

	def update
		@student.update( student_params )
		redirect_to :back
	end

	def destroy

	end

	private
		def find_student
			@student = Student.find( params[:id] )
		end
		def student_params
			params.require(:student).permit(:age, :location, :victim)
		end

end