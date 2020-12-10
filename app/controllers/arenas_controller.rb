class ArenasController < ApplicationController
    before_action :set_arena, only: [:show]

    def index
        @arenas = Arena.all
    end

    def show
    end

    def new
        @arena = Arena.new
    end

    def create
        @arena = Arena.create(arena_params)

        if @arena.valid?
            @arena.save
            redirect_to @arena
        else
            redirect_to new_arena_path
        end
    end

    private

    def set_arena
        @arena = Arena.find(params[:id])
    end

    def arena_params
        params.require(:arena).permit(:name, :city, :state, :capacity, event_ids: [])
    end
end
