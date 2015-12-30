class ClientSessionsController < ApplicationController
  before_filter :save_client_login_state, :only => [:create]

  def authenticate(username_or_email="", login_password="")
    if  Client.find_by_email(username_or_email)    
      client = Client.find_by_email(username_or_email)
    end
    if client && client.match_password(login_password)
      return client
    else
      return false
    end
  end

  def match_password(login_password="")
    if Client.find_by_password(login_password)
      return true
    else
      return false  
    end
  end

  def index
  end	

  def new
  	
  end

  def create
  	authorized_user = Client.where(email: params[:email],password: params[:password]).first
    if authorized_user
      session[:client_id] = authorized_user.id
      flash[:notice] = "Welcome again, you logged in as #{authorized_user.firstname}"
      redirect_to client_path(authorized_user)
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render new_client_session_path 
    end
  end

  def destroy
  	logout
    redirect_to('/', notice: 'Logged out!')
  end

  def logout
  	session[:client_id] = nil
  	
  end
end
