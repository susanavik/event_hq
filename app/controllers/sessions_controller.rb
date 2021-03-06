class SessionsController < ApplicationController
    # skip_before_action :logged_in?, only: [:new_login, :login]

    def reset_page_views 
      session[:page_views] = nil
  
      redirect_back fallback_location: events_path
    end
  
    def logout
      cookies.delete(:user_id)
  
      redirect_to users_path
    end 
  
    def new_login
      render :new_login
    end 
    
    def login_auth
      user = User.find_by(username: params[:session][:username])
  
      #validate that user based on their password
      if user && user.authenticate(params[:session][:password])
        #set a cookie 
        cookies[:user_id] = user.id
        redirect_to user_path(user)
      else
        flash[:error] = "Password or Email is incorrect"
        redirect_to login_path
      end 
    end 

end