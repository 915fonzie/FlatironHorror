class SessionsController < ApplicationController

    def new
    end

    def create
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
