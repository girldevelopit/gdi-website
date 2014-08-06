class LocationsController < ApplicationController
  def index
   locational
  end

  def show
    @location = Location.find(params[:id])
    @users = @location.admin_users
    @bios = []
    @users.each do |user|
      @bios << user.bio
    end
  end
end
