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
