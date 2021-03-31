class EventsController < ApplicationController

    def index
        @events = Event.all 
    end

    def new 
        @event = Event.new
    end
    
    def show
        @event = Event.find(params[:id])
    end

    def create
        # event = Event.create(event_params)
        event = @current_user.hosted_events.new(event_params) 
        event.save
        redirect_to event_path(event.id)
    end

    def event_params
        params.require(:event).permit(:name, :date_and_time, :location, :capacity, :description)
    end

end
