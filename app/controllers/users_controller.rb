class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
    end

    def new
    end
    
    def create
        
    end

    def post_params
        params.require(:user).permit!
    end
end
