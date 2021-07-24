class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories
  has_many :votes, dependent: :destroy

  has_one_attached :main_image
  # validates :main_image, presence: true,
  #                        blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..3.megabytes }

  validates :title, presence: true
  validates :text, length: { minimum: 15 }
  validates :category_ids, presence: { message: 'Select at least 1 category' }

  scope :ordered_by_votes, -> { sort_by { |article| article.votes.count }.reverse }
end
