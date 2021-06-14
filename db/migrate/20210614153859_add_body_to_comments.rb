class AddBodyToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :body, :text
  end
end
