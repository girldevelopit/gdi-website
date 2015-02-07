class ChaptersController < ApplicationController
  require 'rails_autolink'
  def index
    @chapters = Chapter.order("chapter ASC").all
    states = {}
    @chapters.each do |l|
      if states[l.state]
        states[l.state] << l.chapter
      else
        states[l.state] = [l.chapter]
      end
    end
    @states = states.to_a.sort

  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @chapters }
  end
end

  def show
    @chapter = Chapter.friendly.find(params[:id])
    if request.path != chapter_path(@chapter)
      redirect_to @chapter, status: :moved_permanently
    end
    @users = @chapter.admin_users
    @sponsors = @chapter.sponsors

    @bios = @chapter.bios
    @leaders = @bios.where(title: "LEADERS")
    @instructors = @bios.where(title: "INSTRUCTORS")
    @volunteers = @bios.where(title: "VOLUNTEERS")

    api = MeetupApi.new
    @events = api.events(group_id: @chapter.meetup_id)
  end
end
