module ArticlesHelper
  def highest_ranked_articles
    Category.find(Article.ordered_by_vote_count).first
  end
end
