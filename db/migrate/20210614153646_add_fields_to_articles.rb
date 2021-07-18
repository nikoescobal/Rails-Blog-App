# rubocop:disable all
# frozen_string_literal: true

class AddFieldsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :title, :string
    add_column :articles, :text, :string
    add_column :articles, :image, :string
  end
end

# rubocop:enable all