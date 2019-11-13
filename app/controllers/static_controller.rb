class StaticController < ApplicationController

    def index 
        @user = User.find_by(id: 1)
    end
end
