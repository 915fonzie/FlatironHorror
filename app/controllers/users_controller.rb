class UsersController < ApplicationController
    before_action :authorize, except: [:new, :create]
    def index
        @users = User.all
    end

    def new 
        if @current_user
            redirect_to user_path(@current_user)
        end
        @user = User.new
    end

    def create 
        @user = User.create(user_params)

        if @user.valid?
            @user.save
            flash[:notice] = "Account created successfully!"
            session[:user_id] = @user.id.to_s
            redirect_to user_path(@user), notice: "Successfully logged in as #{@user.first_name}!"
        elsif @user.password != @user.password_confirmation
            flash.now.alert = "Oops, couldn't create account. Please make sure that passwords are matching"
            render :new
        else
            flash.now.alert = "Oops, couldn't create account. Please make sure you use a username that hasn't been used before"
            render :new
        end
    end

    def show 
        if @current_user.id.to_s != params[:id]
            flash[:notice] = "Sorry, you don't have access to that"
            redirect_to user_path(@current_user)
        end
        @user = @current_user
        @campaign1 = Campaign.first
        @storyline1 = @campaign1.storylines.first

    end

    def edit
        @user = @current_user
        if @user.username == "guest"
            flash[:notice] = "Sorry, can't edit guest account"
            redirect_to user_path(@user)
        end
    end

    def update
        @user = @current_user
        @user.update(user_params)
        if @user.valid?
            flash[:notice] = "Account updated successfully!"
            session[:user_id] = @user.id.to_s
            redirect_to user_path(@user)
        elsif @user.password != @user.password_confirmation
            flash.now.alert = "Oops, couldn't update account. Please make sure that passwords are matching"
            render :edit
        else
            flash.now.alert = "Oops, couldn't update account. Please make sure you use a username that hasn't been used before"
            render :edit
        end
    end

    def destroy
        @user = @current_user
        @user.destroy
        redirect_to '/'
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation)
    end
end
