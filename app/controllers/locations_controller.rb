class LocationsController < ApplicationController
  def index
    locational

    #  params = { category: '1',
    #   city: 'London',
    #   country: 'GB',
    #   id: '13459032',
    #   name: 'Diorama-Arts-Studios,',
    #   format: 'json',
    #   page: '1'}
    # meetup_api = MeetupApi.new
    # @events = meetup_api.open_events(params)

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

    @bios = @location.bios
    @leaders = @bios.where(title: "LEADERS")
    @instructors = @bios.where(title: "INSTRUCTORS")

    api = MeetupApi.new
    @events = api.events(group_id: @location.meetup_id)

  end
end
