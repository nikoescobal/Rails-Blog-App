class AddVoteCountToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :vote_count, :integer, default: 0
  end
end
