class QuestionsController < ApplicationController

  def index

  end
  def show
  	  	@question_response = QuestionResponse.new
        @student = Student.find(params[:student_id])
        @question = Question.find(params[:id])

  	
  end

end
