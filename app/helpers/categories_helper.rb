module CategoriesHelper
  def fetch_articles
    @category.articles.with_attached_main_image.order('created_at desc').includes([:user])
  end

  def main_image(fetch_articles, is_odd)
    if fetch_articles.main_image.attached?
      if is_odd
        image_tag fetch_articles.main_image, class:'object-cover order-second w-full min-h-80 max-h-full h-full odd'
      else
        image_tag fetch_articles.main_image, class:'object-cover order-first w-full min-h-80 max-h-full h-full even'
      end
    else
      image_tag 'placeholder'
    end
  end

end