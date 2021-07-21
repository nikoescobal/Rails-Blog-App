# rubocop:disable all
# frozen_string_literal: true

class RemoveVoteCountFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :vote_count, :integer
  end
end

# rubocop:enable all