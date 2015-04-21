class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.belongs_to :student
      t.boolean :q1
      t.boolean :q2
      t.boolean :q3
      t.boolean :q4
      t.boolean :q5
      t.boolean :q6
      t.boolean :q7
      t.boolean :q8
      t.boolean :q9
      t.boolean :q10  
      t.timestamps null: false
    end
  end
end
