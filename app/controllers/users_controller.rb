class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])

        # if @current_user == @user
        #     render :show
        # else
        #     flash[:message] = "You can only see your profile page"
        #     redirect_to users_path
        # end
    end

    def new
        @user = User.new
    end

    def create 
        User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:name, :img_url, :bio, :username, :password)
    end
end
