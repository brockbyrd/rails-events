class ArenasController < ApplicationController
    before_action :set_arena, only: [:show, :edit, :update]

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
        @arena.user_id = current_user.id

        if @arena.valid?
            @arena.save
            redirect_to @arena
        else
            redirect_to new_arena_path
        end
    end

    def edit
    end

    def update
        if @arena.update(arena_params)
            redirect_to @arena
        else
            render :edit
        end
    end

    def destroy
        Arena.find(params[:id]).destroy
        redirect_to arenas_path
    end

    private

    def set_arena
        @arena = Arena.find(params[:id])
    end

    def arena_params
        params.require(:arenas).permit(:name, :city, :state, :capacity)
    end
end
