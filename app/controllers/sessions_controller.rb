class SessionsController < ApplicationController
    def new
        if current_user
            redirect_to user_path(current_user)
        end
    end

    def create
        if current_user && current_user.first_name != "guest"
            redirect_to user_path(current_user)
        end
        user = User.find_by(username: params[:login][:username])
        if user && user.authenticate(params[:login][:password])
            session[:user_id] = user.id.to_s
            redirect_to user_path(user.id), notice: "Successfully logged in as #{user.first_name}!"
        else
            flash.now.alert = "Incorrect username or password, try again."
            render :new
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path, notice: 'Logged out!'
    end
end
