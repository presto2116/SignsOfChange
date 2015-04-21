class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.text :sign_text
      t.timestamps null: false
    end
  end
end
