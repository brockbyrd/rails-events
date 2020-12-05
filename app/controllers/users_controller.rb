class UsersController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = User.find_by(id: params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
