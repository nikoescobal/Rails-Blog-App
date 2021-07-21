# rubocop:disable all
# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

# rubocop:enable all