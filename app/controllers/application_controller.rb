class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :set_locale

	def set_locale
	  if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
	    l = cookies[:educator_locale].to_sym
	  else
	    l = I18n.default_locale
	    cookies.permanent[:educator_locale] = l
	  end
	  I18n.locale = l
	end

	def get_languageid(language)
		if language == "pt"
			return 2
		elsif language == "en"
			return 1
		elsif language == "de"
			return 3
		else
			return 4	
		end
	end
  
  protected
  def authenticate_owner
	  if session[:owner_id]
	     # set current user object to @current_owner object variable
	    @current_owner = Owner.find session[:owner_id] 
	    puts "*********" + @current_owner.id
	    return true	
	  else
	    #redirect_to(:controller => 'owner_sessions', :action => 'new')
	    return false
	  end
  end
  def authenticate_client
	  if session[:client_id]
	     # set current user object to @current_client object variable
	    @current_client = Client.find session[:client_id] 
	    return true	
	  else
	    #redirect_to(:controller => 'client_sessions', :action => 'new')
	    return false
	  end
  end

  def save_owner_login_state
	  if session[:owner_id]
	    redirect_to "/"
	    return false
	  else
	    return true
	  end
  end

  def save_client_login_state
	  if session[:client_id]
	    redirect_to '/'
	    return false
	  else
	    return true
	  end
  end
end
