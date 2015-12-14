class PublicController < ApplicationController
	def home
		@regions = Region.all
		@entries_discounts = EntriesDiscount.joins(:entry).limit(2)
		@recent_entries = Entry.order("id desc").limit(2)
	end	
end