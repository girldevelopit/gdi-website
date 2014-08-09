class HomeController < ApplicationController
  def index
    locational # in applaction controller
    params = { category: '1',
          zip: '27701',
          # city: 'Raleigh',
          # state: 'NC',
          # country: 'USA',
          status: 'upcoming',
          format: 'json',
          page: '5'}

    meetup_api = MeetupApi.new
    @events = meetup_api.open_events(params)
  end

  def about
  end
end
