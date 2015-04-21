class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :age
      t.integer :location
      t.boolean :victim
      t.timestamps null: false
    end
  end
end
