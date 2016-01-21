# == Schema Information
#
# Table name: specialoffers
#
#  id          :integer          not null
#  entrie      :integer
#  language    :integer
#  name        :string(200)
#  from        :date
#  to          :date
#  description :text(4294967295)
#  price       :float(24)
#

class Specialoffer < ActiveRecord::Base
	belongs_to :entry, :class_name => "Entry", :foreign_key => 'entrie'
end
