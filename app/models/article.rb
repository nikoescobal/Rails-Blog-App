class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :votes, dependent: :destroy

  validates :title, :image, presence: true
  validates :text, length: { minimum: 25 }
  validates :image, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: 'must be a JPG or PNG image'
  }
end
