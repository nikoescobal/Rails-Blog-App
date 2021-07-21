# rubocop:disable all
# frozen_string_literal: true

class AddVoteCountToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :vote_count, :integer, default: 0
  end
end

# rubocop:enable all