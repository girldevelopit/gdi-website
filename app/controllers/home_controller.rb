class HomeController < ApplicationController

  def index
  @chapters = Chapter.all
  @chapter = Chapter.all
  end

  def about
  end

  def donate
  end
end
