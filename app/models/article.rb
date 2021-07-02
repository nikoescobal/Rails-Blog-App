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


  scope :ordered_by_vote_count, -> { order(vote_count: :desc) }

end

