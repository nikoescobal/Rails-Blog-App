class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :votes, dependent: :destroy
end
