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
        @event = Event.new(arena_id: params[:arena_id])
    end

    def create
        @event = Event.new(event_params)
        @event.user_id = current_user.id

        if @event.valid?
            @event.save
            redirect_to @event
        else
            redirect_to new_event_path
        end
    end

    def edit
    end

    def update
        if @event.update(event_params)
            redirect_to @event
        else
            render :edit
        end
    end

    def destroy
        Event.find(params[:id]).destroy
        redirect_to arenas_path
    end

    private

    def set_event
        @event = Event.find(params[:id])
    end

    def event_params
        params.require(:event).permit(:performer, :price, :time, :arena_id, :user_id, :type_id, type_attributes: [:name])
    end
end
