module OwnerSessionsHelper
	def current_owner
  		@current_owner ||= owner_from_remember_token
	end
end
