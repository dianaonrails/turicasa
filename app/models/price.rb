# == Schema Information
#
# Table name: prices
#
#  id          :integer          not null, primary key
#  entrie      :integer
#  description :string(50)
#  price       :float(24)        default(0.0)
#  from        :date
#  to          :date
#  type_of     :integer
#

class Price < ActiveRecord::Base
	belongs_to :entry, :class_name => "Entry", :foreign_key => 'entrie'
end
