class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.text :description
      t.integer :next_story_id

      t.timestamps
    end
  end
end
