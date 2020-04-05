class SessionsController < ApplicationController
skip_before_action :authorized, only: [:new, :create, :welcome]
  
  def new
  end

  def create
    # use to 
    user = User
    .find_by(username: params[:username])
   # .try(:authenticate, params["username"]["password"]

    if user && user.authenticate(params[:password])
        session[:user_id] = user.id 
        redirect_to '/welcome'
    else
      flash[:danger] = 'Invalid user/password combination'
      render 'new'
    end
  end

  def welcome
    
  end

  def login
  end

  def page_requires_login
  end
  
  def destroy
    session.delete(:user_id)
    redirect_to '/login'
  end

end
