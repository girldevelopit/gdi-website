class LocationsController < ApplicationController
  def index
   locational
  end

  def show
    @locations = Location.find(params[:id])
  end
end
