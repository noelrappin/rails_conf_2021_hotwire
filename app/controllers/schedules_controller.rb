class SchedulesController < ApplicationController
  def show
    @concerts = Concert.includes(:venue, gigs: :band).all
    @schedule = Schedule.from_concerts(@concerts)
    @schedule.hide(params[:hidden]&.split(",") || [])
    @schedule.schedule_day_at(params[:toggle])&.toggle!
    @user = current_user
    respond_to do |format|
      format.html
      format.json { render(json: @concerts) }
    end
  end
end
