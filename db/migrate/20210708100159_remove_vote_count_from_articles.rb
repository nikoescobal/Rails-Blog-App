class RemoveVoteCountFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :vote_count, :integer
  end
end
