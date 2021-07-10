module CategoriesHelper
  def fetch_articles
    @category.articles.with_attached_main_image.order('created_at desc').includes([:user])
  end

  def main_image(fetch_articles)
    if fetch_articles.main_image.attached?
      image_tag fetch_articles.main_image, class:'object-cover order-first sm:order-first md:order-first lg:order-none w-full min-h-80 max-h-full h-full'
    else
      image_tag 'placeholder'
    end
  end

end