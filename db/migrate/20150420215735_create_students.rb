class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :age
      t.integer :location
      t.boolean :victim
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
      t.boolean :q11
      t.boolean :q12
      t.boolean :q13
      t.boolean :q14
      t.boolean :q15

      t.timestamps null: false
    end
  end
end
