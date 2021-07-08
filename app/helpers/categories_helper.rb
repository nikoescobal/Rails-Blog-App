module CategoriesHelper
  def fetch_articles
    @category.articles.order('created_at desc')
  end

  def category_image(article, is_even)
    if article.category_image.attached?
      if is_even
        image_tag article.category_image, class:'object-cover lg:order-second w-full h-80 lg:even lg:odd'
      else
        image_tag article.category_image, class:'object-cover lg:order-first w-full h-80 lg:even lg:odd'
      end
    else
      image_tag 'placeholder'
    end
  end

end