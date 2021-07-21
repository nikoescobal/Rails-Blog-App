# rubocop:disable all
# frozen_string_literal: true

module CategoriesHelper
  def fetch_articles
    @category.articles.with_attached_main_image.order('created_at desc').includes([:user])
  end

  def category_image(fetch_articles)
    if fetch_articles.main_image.attached?
      image_tag fetch_articles.main_image,
                class: 'object-cover order-first sm:order-first md:order-first lg:order-none w-full h-64 max-h-full lg:h-full'
    else
      image_tag 'placeholder.jpeg'
    end
  end
end

# rubocop:enable all
