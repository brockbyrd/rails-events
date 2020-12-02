class EventsController < ApplicationController

    def index
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

    def event_params
        params.require(:events).permit(:performer, :type, :price, :time)
    end
end
