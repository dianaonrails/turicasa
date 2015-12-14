# == Schema Information
#
# Table name: regions
#
#  id           :integer          not null
#  optionnumber :integer
#  language     :integer
#  con          :integer
#  cou          :integer
#  region       :string(40)
#

class Region < ActiveRecord::Base
end
