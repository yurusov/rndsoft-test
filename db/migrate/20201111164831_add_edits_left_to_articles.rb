class AddEditsLeftToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :edits_left, :integer
  end
end
