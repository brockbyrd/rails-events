class ArenasController < ApplicationController

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

    def arena_params
        params.require(:arenas).permit(:name, :city, :state, :capacity)
    end
end
