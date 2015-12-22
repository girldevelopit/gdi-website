class HomeController < ApplicationController

  def index
  @chapters = Chapter.where("is_active = 1")
  @chapter = Chapter.where("is_active = 1")
  end

  def about
  	@chapter_count = Chapter.where("is_active = 1").count
  end

  def donate
  end
end
