class ArenasController < ApplicationController
    before_action: [:show, :edit, :destroy]

    def index
        @arenas = Arena.all
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

    def set_arena
        @arena = Arena.find(params[:id])
    end

    def arena_params
        params.require(:arenas).permit(:name, :city, :state, :capacity)
    end
end
