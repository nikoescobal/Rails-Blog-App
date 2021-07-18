# rubocop:disable all
# frozen_string_literal: true

class RemoveImageFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :image, :string
  end
end

# rubocop:enable all