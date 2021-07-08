module ArticlesHelper

  def main_image(article, is_main)
    if article.main_image.attached?
      if is_main
        image_tag article.main_image, class: 'h-full w-full object-cover'
      else
        image_tag article.main_image, class: 'object-cover h-full md:w-full lg:w-full group-hover:scale-110'
      end
    else
      image_tag 'placeholder'
    end
  end

  def first_article
    @articles.sort_by_votes.first
  end

  def highest_ranked_categories
    #etches the article with the most votes for each category
    Category.order('priority').first(4)
  end
end