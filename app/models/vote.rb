class Vote < ApplicationRecord
  after_create :increment_vote_count


  def increment_vote_count
    article.update(invote_count: article.vote_count + 1)
  end

  belongs_to :user
  belongs_to :article
  validates :user_id, uniqueness: { scope: :article_id }
end
