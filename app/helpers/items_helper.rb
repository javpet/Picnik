module ItemsHelper

  def format_categories(categories)
    categories.map do |category|
      links = link_to category.title, category_path(category)
    end

    links.to_sentence.html_safe
  end

end
