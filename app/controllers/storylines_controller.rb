class StorylinesController < ApplicationController
    def show
        @storyline = Storyline.find(params[:id])
        @user
    end
end
