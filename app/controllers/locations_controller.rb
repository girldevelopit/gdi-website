class LocationsController < ApplicationController
  def index
    locational

    # params = { category: '1',
    #           city: 'new_york',
    #           format: 'json',
    #           page: '5'}
    # meetup_api = MeetupApi.new
    # @events = meetup_api.open_events(params) ## Currently events just gets
    #      ## dumped straight into the page. It is ugly, but there is information,
    #      ## and we can get better information out of it :)

     params = { category: '1',
      city: 'London',
      country: 'GB',
      id: '13459032',
      name: 'Diorama-Arts-Studios,',
      format: 'json',
      page: '1'}
    meetup_api = MeetupApi.new
    @events = meetup_api.open_events(params)
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
