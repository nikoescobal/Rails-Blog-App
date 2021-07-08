module CategoriesHelper
  def fetch_articles
    @category.articles.with_attached_main_image.order('created_at desc').includes([:user])
  end

  def main_image(fetch_articles, is_even)
    if fetch_articles.main_image.attached?
      if is_even
        image_tag fetch_articles.main_image, class:'object-cover lg:order-second w-full min-h-80 max-h-full h-full lg:even lg:odd'
      else
        image_tag fetch_articles.main_image, class:'object-cover lg:order-first w-full min-h-80 max-h-full h-full lg:even lg:odd'
      end
    else
      image_tag 'placeholder'
    end
  end

end