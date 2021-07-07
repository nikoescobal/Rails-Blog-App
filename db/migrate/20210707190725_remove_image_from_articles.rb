class RemoveImageFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :image, :string
  end
end
