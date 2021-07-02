module ArticlesHelper
  def highest_ranked_categories
    #etches the article with the most votes for each category
    Category.order("priority").first(4)
  end
end