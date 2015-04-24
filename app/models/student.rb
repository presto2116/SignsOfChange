class Student < ActiveRecord::Base
	has_many :question_responses
	has_many :questions, :through => :question_response


end
