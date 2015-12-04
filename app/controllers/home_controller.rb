class HomeController < ApplicationController

  def index
  @chapters = Chapter.all
  @chapter = Chapter.all
  end

  def about
  	@chapter_count = Chapter.count
  end

  def donate
  end
end
