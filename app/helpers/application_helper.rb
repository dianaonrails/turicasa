module ApplicationHelper

	def controller?(*controller)
	    controller.include?(params[:controller])
	end
	def action?(*action)
	    action.include?(params[:action])
	end

	def current_owner(owner)
		@current_owner = owner
	end	

	

end
