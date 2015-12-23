class HomeController < ApplicationController

  def index
  @chapters = Chapter.active
  @chapter = Chapter.active
  end

  def about
  	@chapter_count = Chapter.active.count
  end

  def donate
  end

  def supporters
  	@chapter_count = Chapter.active.count
  end
end
