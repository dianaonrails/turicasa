# == Schema Information
#
# Table name: entries_reviews
#
#  id     :integer          not null, primary key
#  entrie :integer
#  review :text(65535)
#

class EntriesReview < ActiveRecord::Base
end
