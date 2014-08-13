class LocationsController < ApplicationController
  def index
    locational

    @locations = Location.all
    states = {}
    @locations.each do |l|
      if states[l.state]
        states[l.state] << l.location
      else
        states[l.state] = [l.location]
      end
    end
    @states = states.to_a.sort

  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @locations }
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

    api = MeetupApi.new
    @events = api.events(group_id: @location.meetup_id)
  end
end
