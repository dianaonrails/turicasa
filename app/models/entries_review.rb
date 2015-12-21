# == Schema Information
#
# Table name: entries_reviews
#
#  id     :integer          not null, primary key
#  entrie :integer
#  review :text(65535)
#

class EntriesReview < ActiveRecord::Base
	belongs_to :entry, :class_name => "Entry", :foreign_key => 'entrie'
end
