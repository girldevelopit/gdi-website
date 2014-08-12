class LocationsController < ApplicationController
  def index
   locational

    @locations = Location.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations}
    end
  end

  def show
    @location = Location.find(params[:id])
    @users = @location.admin_users
    @sponsors = @location.sponsors

    @bios = []
    @users.each do |user|
      @bios << user.bio
    end
  end
end
