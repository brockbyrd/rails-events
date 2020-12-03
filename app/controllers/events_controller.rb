class EventsController < ApplicationController
    before_action: [:show, :edit, :destroy]

    def index
        @events = Event.all
    end

    def show
    end

    def new
    end

    def create
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
        params.require(:events).permit(:performer, :type, :price, :time)
    end
end
