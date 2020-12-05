class ApplicationController < ActionController::Base

    def home

    end

      protected

      def authenticate_user!
        if user_signed_in?
          arenas_path
        else
          redirect_to new_user_session_path, :notice => 'You must be signed in to do that'
        end
      end
  
end
