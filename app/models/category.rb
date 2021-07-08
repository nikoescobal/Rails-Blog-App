class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories

  has_one_attached :main_image


    @categories = Category.all
  
end
