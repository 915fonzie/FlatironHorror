class StorylinesController < ApplicationController
    before_action :authorize
    layout "application"
    
    def show
        if params[:user_id] != current_user.id.to_s
            flash[:notice] = "Sorry, you're not allowed to do that"
            redirect_to user_path(current_user)
        end
        @storyline = Storyline.find(params[:id])
        @user = User.find(params[:user_id])
    end
end
