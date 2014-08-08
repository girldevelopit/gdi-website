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

    #for each sponsor with location.id == to current location show sponsor

    @sponsor = Sponsor.all

    # @location.each do |location|
    #   @sponsor << location.sponsor
    # end
  end
end
