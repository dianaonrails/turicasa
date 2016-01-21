# == Schema Information
#
# Table name: entries_discounts
#
#  id       :integer          not null, primary key
#  entrie   :integer
#  days     :integer
#  type_of  :integer
#  discount :float(24)
#  unit     :integer
#  when     :integer
#  date1    :date
#  date2    :date
#

class EntriesDiscount < ActiveRecord::Base
	
	belongs_to :entry, :class_name => "Entry", :foreign_key => 'entrie'
end
