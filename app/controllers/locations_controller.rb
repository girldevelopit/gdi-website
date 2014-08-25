class LocationsController < ApplicationController
  require 'rails_autolink'
  def index
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
    @location = Location.friendly.find(params[:id])
    if request.path != location_path(@location)
      redirect_to @location, status: :moved_permanently
    end
    @users = @location.admin_users
    @sponsors = @location.sponsors

    @bios = @location.bios
    @leaders = @bios.where(title: "LEADERS")
    @instructors = @bios.where(title: "INSTRUCTORS")

    api = MeetupApi.new
    @events = api.events(group_id: @location.meetup_id)
  end
end
