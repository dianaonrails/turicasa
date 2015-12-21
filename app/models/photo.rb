# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null
#  entrie      :integer
#  photo       :string(100)
#  description :string(100)
#  ordem       :integer          default(100)
#

class Photo < ActiveRecord::Base
	belongs_to :entry, :class_name => "Entry", :foreign_key => 'entrie'
end
