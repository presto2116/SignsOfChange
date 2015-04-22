class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.text :info_image
      t.text :info_text
      t.text :story_head
      t.text :story_video
      t.text :story_text

      t.timestamps null: false
    end
  end
end
