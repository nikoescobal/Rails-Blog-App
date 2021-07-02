module CategoriesHelper
  def fetch_articles
    @category.articles.order("created_at desc")
  end
end
