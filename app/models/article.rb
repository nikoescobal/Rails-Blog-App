class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories
  has_many :votes, dependent: :destroy

  has_one_attached :main_image

  validates :title, presence: true
  validates :text, length: { minimum: 15 }

  scope :ordered_by_vote_count, -> { order(vote_count: :desc) }
end
