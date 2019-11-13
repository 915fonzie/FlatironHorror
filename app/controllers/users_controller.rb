class UsersController < ApplicationController
    before_action :authorize, except: [:new, :create]
    def index
        @users = User.all
    end

    def new 
        @user = User.new
    end

    def create 
        @user = User.create(user_params)

        if @user.save
            flash[:notice] = "Account created successfully!"
            redirect_to user_path(@user)
        elsif @user.password != @user.password_confirmation
            flash.now.alert = "Oops, couldn't create account. Please make sure that passwords are matching"
            render :new
        else
            flash.now.alert = "Oops, couldn't create account. Please make sure you use a username that hasn't been used before"
            render :new
        end
    end

    def show 
        @user = User.find(params[:id])
        @campaign1 = Campaign.first
        @storyline1 = @campaign1.storylines.first

    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to '/'
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation)
    end
end
