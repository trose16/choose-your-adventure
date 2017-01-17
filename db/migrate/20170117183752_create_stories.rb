class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.text :description
      t.text :image_url
      t.text :location

      t.timestamps
    end
  end
end
