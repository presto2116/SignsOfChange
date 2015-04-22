class QuestionResponsesController < ApplicationController

	def new
		@response = QuestionResponse.new
	end

	def create
		@student = Student.find(params[:student_id])
		@question = Question.find(params[:question_id])
		@student.question_responses.(question_id: @question.id, response: params[:question_response][:response])
		redirect_to :back

	end

	private
		def question_response_params
			params.require(:question_response).permit(:student_id, :question_id, :response)
		end

end
