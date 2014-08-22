class HomeController < ApplicationController

  def index
  @locations = Location.all
  @location = Location.all

  end

  def about
  end
end
