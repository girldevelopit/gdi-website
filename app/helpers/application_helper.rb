module ApplicationHelper

  def active_page(path)
    "active-nav" if current_page?(path)
  end

  def full_title(page_title = '')
    base_title = "Girl Develop It"
    if page_title.empty?
      base_title
    else
      "#{page_title}  -  #{base_title}"
    end
  end
end
