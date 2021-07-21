# rubocop:disable all
# frozen_string_literal: true

class AddFieldsToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :name, :string
    add_column :categories, :priority, :integer
  end
end

# rubocop:enable all