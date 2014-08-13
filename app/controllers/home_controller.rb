class HomeController < ApplicationController

  def index
  @location = Location.all

#
#     params = { category: '1',
#       zip: '27701',
#       format: 'json',
#       page: '5'}
#     meetup_api = MeetupApi.new
#     @events = meetup_api.open_events(params) ## Currently events just gets
  end    ## dumped straight into the page. It is ugly, but there is information,
         ## and we can get better information out of it :)

  def about
  end
end
