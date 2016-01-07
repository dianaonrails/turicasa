module ApplicationHelper

	def controller?(*controller)
	    controller.include?(params[:controller])
	end
	def action?(*action)
	    action.include?(params[:action])
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
end
