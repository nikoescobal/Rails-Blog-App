class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories
  has_many :votes, dependent: :destroy

  validates :title, :image, presence: true
  validates :text, length: { minimum: 15 }
  validates :image, format: {
    with: /\w+\.(jpg|png|jpeg)\z/i,
    message: 'must be a JPG, JPEG or PNG image'
  }

  def self.first_four_articles
    Article.first_four.filter{|el| el!=Article.ordered_by_vote_count}
  end

  scope :ordered_by_vote_count, -> { order(vote_count: :desc) }
  scope :first_four, -> { limit(4).where.not(id: Article.ordered_by_vote_count.first.id) }

end

