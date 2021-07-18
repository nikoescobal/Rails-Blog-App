# rubocop:disable all
# frozen_string_literal: true

class AddBodyToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :body, :text
  end
end

# rubocop:enable all