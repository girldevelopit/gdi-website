class LocationsController < ApplicationController
  def index
    locational
  end

  def show
    @locations = Location.find(params[:id])
    @bio = Bio.all
  end
end
