module ChaptersHelper
  def image_route(s)
    "state_map/#{s.parameterize}.png"
  end

  def linkedin_link(chapter_linkedin)
    chapter_linkedin.downcase!
    if chapter_linkedin.match("^https?:\/\/www\.linkedin\.com")
        return chapter_linkedin
    else
        return "https://www.linkedin.com/#{chapter_linkedin}"
    end
  end
end
