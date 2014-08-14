class MeetupsController < ApplicationController

  def show
    ## Someday there will be caching here!
    @location = Location.find_by(slug: params[:slug])

    params = { group_id: @location.meetup_id, key: ENV["MEETUP_API_KEY"]}
    meetup_api = MeetupApi.new
    @glob = meetup_api.events(params)
    @results = @glob["results"]

    respond_to do |format|
      format.json { render json: @results }
    end
  end

end
