class AddAdventureRefToGame < ActiveRecord::Migration[5.0]
  def change
    add_reference :games, :adventure, foreign_key: true
  end
end
