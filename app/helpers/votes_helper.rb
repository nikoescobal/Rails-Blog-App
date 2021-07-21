module VotesHelper
  def ordered_by_vote_count
    # Vote.order(:article_id)
    ArticleCategory.order('article_id asc').first.article.votes
  end
end
