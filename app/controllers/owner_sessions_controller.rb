class OwnerSessionsController < ApplicationController
  before_filter :authenticate_user, :only => [:home, :profile, :setting]
  before_filter :save_login_state, :only => [:login, :login_attempt]
  def authenticate(username_or_email="", login_password="")
    if  Owner.find_by_email(username_or_email)    
      owner = Owner.find_by_email(username_or_email)
    end
    if owner && owner.match_password(login_password)
      return owner
    else
      return false
    end
  end 

  def match_password(login_password="")
    if Owner.find_by_password(login_password)
      return true
    else
      return false  
    end
  end  


  def new
  	@owner = Owner.new
  end

  def create
  	authorized_user = Owner.where(email: params[:email],password: params[:password]).first
    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.firstname}"
      redirect_to owner_path(authorized_user)
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render new_owner_session_path 
    end
  end

  def destroy
  	logout
    redirect_to('/', notice: 'Logged out!')
  end
end
