class QuestionsController < ApplicationController

  def index

  end
  def show
  	render "questions/#{params[:id]}"
  end
end
