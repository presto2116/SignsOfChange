class Question < ActiveRecord::Base
	has_many :question_responses
	has_many :students, :through => :question_response
end
