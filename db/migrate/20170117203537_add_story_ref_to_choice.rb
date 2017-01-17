class AddStoryRefToChoice < ActiveRecord::Migration[5.0]
  def change
    add_reference :choices, :story, foreign_key: true
  end
end
