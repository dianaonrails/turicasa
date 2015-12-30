class OwnerSessionsController < ApplicationController

  #before_filter :authenticate_owner
  before_filter :save_owner_login_state, :only => [:new,:create]


  def new
  	
  end

  def create
  	authorized_user = Owner.where(email: params[:email],password: params[:password]).first
    if authorized_user
      session[:owner_id] = authorized_user.id
      flash[:notice] = "Welcome, you logged in as #{authorized_user.firstname}"
      redirect_to owner_path(authorized_user)
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render new_owner_session_path 
    end
  end

  def destroy
  	logout
    current_user = nil
    redirect_to('/', notice: 'Logged out!')
  end

  def logout
    session[:owner_id] = nil
    
  end
end
