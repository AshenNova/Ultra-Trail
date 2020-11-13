class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
   @event = Event.new(params.require(:event).permit(:Name_of_Event, :Distance_participating, :Country, :Date_of_Event, :Description)) 
    if @event.save
        flash[:notice] = "Event was successfully submitted"
        redirect_to @event
     else
       render 'new'
     end
  end

end