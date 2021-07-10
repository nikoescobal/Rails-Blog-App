module ArticlesHelper

  def main_image(article, is_main)
    if article.main_image.attached?
      if is_main
        image_tag article.main_image, class: 'h-full object-cover max-h-full w-full bg-no-repeat bg-center'
      else
        image_tag article.main_image, class: 'bg-cover object-cover h-64 max-h-full bg-no-repeat bg-center md:w-full lg:w-full hover:scale-110'
      end
    else
      image_tag 'placeholder', class: 'h-64 w-full'
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