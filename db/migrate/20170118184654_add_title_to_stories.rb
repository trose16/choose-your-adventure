class AddTitleToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :title, :text
  end
end
