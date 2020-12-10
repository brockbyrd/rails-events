class EventsController < ApplicationController
    before_action :set_event, only: [:edit, :update, :destroy]

    def comedy
        @events = Event.comedy
    end

    def sports
        @events = Event.sports
    end

    def concert
        @events = Event.concert
    end

    def festival
        @events = Event.festival
    end

    def fundraiser
        @events = Event.fundraiser
    end

    def index
        if params[:arena_id]
            @events = Arena.find(params[:arena_id]).events
          else
            @events = Event.all
          end
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new(arena_id: params[:arena_id])
    end

    def create
        @event = current_user.events.create(event_params)

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
        @event.destroy
        flash[:success] = "Event Deleted"
        redirect_to arenas_path
    end

    private

    def set_event
        @event = current_user.events.find_by(id: params[:id])
        if !@event
            flash[:error] = "You are not authorized to do that!"
            redirect_to arenas_path
        end
    end

    def event_params
        params.require(:event).permit(:performer, :price, :time, :arena_id, :user_id, :type_id, type_attributes: [:name])
    end
end
