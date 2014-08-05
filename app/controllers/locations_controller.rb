class LocationsController < ApplicationController
  def index
    @location = Location.all
  end

  def show
    @locations = Location.find(params[:id])
    @bio = Bio.all
  end
end
