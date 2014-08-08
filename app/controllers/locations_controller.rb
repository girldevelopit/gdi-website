class LocationsController < ApplicationController
  def index
   locational
  end

  def show
    @location = Location.find(params[:id])
    @users = @location.admin_users
    @sponsors = @location.sponsors

    @bios = []
    @users.each do |user|
      @bios << user.bio
    end

    #for each sponsor with location.id == to current location show sponsor

  end
end
