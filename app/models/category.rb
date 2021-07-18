# rubocop:disable Style/Documentation
# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories

  @categories = Category.all
end

# rubocop:enable Style/Documentation
