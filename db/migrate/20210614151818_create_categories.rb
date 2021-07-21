# rubocop:disable all
# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories, &:timestamps
  end
end

# rubocop:enable all