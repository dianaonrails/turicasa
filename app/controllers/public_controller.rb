class PublicController < ApplicationController
	def home
		if I18n.locale.to_s == "pt"
			@regions = Region.where(language: 2)
		elsif I18n.locale.to_s == "en"
			@regions = 	Region.where(language: 1)
		elsif I18n.locale.to_s == "de"
			@regions = 	Region.where(language: 3)
		else
			@regions = 	Region.where(language: 4)	
		end
		@entries_discounts = EntriesDiscount.joins(:entry).limit(2)
		@recent_entries = Entry.approved.active.last(2)
		@special_offers = Specialoffer.joins(:entry).where(homepage: true, language: get_languageid(I18n.locale.to_s)).limit(2)
	end	
end