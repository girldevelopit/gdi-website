module ApplicationHelper

  def active_page(path)
    "active-nav" if current_page?(path)
  end
end
