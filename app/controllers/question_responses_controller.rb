class QuestionResponsesController < ApplicationController

	def create
		@student = Student.find(params[:student_id])
		@question = Question.find(params[:question_id])
		#@response = QuestionResponse.create(questionresponse_params)
		@student.question_responses.create(question_id: @question.id, response: params[:question_response][:response])
		redirect_to :back
	end

	private
		def question_response_params
			params.require(:question_response).permit(:student_id, :question_id, :response)
		end
		
end

