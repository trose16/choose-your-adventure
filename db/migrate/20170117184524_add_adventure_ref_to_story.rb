class AddAdventureRefToStory < ActiveRecord::Migration[5.0]
  def change
    add_reference :stories, :adventure, foreign_key: true
  end
end
