class CreateQuestionResponses < ActiveRecord::Migration
  def change
    create_table :question_responses do |t|
    	t.belongs_to :student
    	t.belongs_to :question
    	t.boolean :response
      t.timestamps null: false
    end
  end
end
