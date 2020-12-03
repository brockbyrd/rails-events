class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :destroy]

    def comedy
        @events = Event.comedy
    end

    def sports
        @events = Event.sports
    end

    def concert
        @events = Event.concert
    end

    def index
        @events = Event.all
    end

    def show
    end

    def new

    end

    def create
        @event = Event.create(event_params)

        if @event.save?
            redirect_to @event
        else
            redirect_to new_event_path
        end
    end

    def edit
    end

    def update
    end

    def destroy
        
    end

    private

    def set_event
        @event = Event.find(params[:id])
    end

    def event_params
        params.require(:events).permit(:performer, :event_type, :price, :time, :arena_id, :user_id)
    end
end
