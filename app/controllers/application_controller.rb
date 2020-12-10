class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: [:edit, :destroy, :new, :create]

    def home

    end
  
end
