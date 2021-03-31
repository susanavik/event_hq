class UsersController < ApplicationController

    # before_action :logged_in?, only: [:new, :create, :index]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])

        if @current_user == @user
            render :show
        else
            flash[:message] = "You can only see your profile page"
            redirect_to users_path
        end
    end


    def create 
        user = User.create(user_params)

        if user.valid?
            cookies[:user_id] = user.id
            redirect_to user
        else
            flash[:errors] = flash.errors.full_messages
            redirect_to new_user_path
        end  
    end

    def login 
        @current_user = User.new
    end

    def login_auth
        @current_user = User.find(params[:id])
        
        if @current_user && @current_user.authenticate(params[:password])
            sessions[:current_user] = @current_user.id
            redirect_to user_path(current_user)
        else
            flash[:errors] = @current_user.errors.full_messages
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :img_url, :bio, :username, :password)
    end
end
