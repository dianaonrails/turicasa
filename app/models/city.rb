# == Schema Information
#
# Table name: cities
#
#  id           :integer          not null
#  optionnumber :integer
#  language     :integer
#  con          :integer
#  cou          :integer
#  reg          :integer
#  city         :string(40)
#  description  :text(65535)
#

class City < ActiveRecord::Base
end
