class StorylinesController < ApplicationController
    before_action :authorize
    def show
        @storyline = Storyline.find(params[:id])
    end
end
