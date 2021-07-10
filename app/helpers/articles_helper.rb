module ArticlesHelper

  def main_image(article, is_main)
    if article.main_image.attached?
      if is_main
        image_tag article.main_image, class: 'h-full max-h-full min-h-96 w-full bg-cover bg-no-repeat bg-center'
      else
        image_tag article.main_image, class: 'bg-cover bg-no-repeat bg-center h-64 max-h-full h-full md:w-full lg:w-full group-hover:scale-110'
      end
    else
      image_tag 'placeholder object-cover w-full h-64'
    end
  end

  def most_voted_article
    @articles.ordered_by_votes.first
  end

  def highest_ranked_categories
    #etches the article with the most votes for each category
    Category.order('priority').first(4)
  end
end