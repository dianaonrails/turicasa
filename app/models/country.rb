# == Schema Information
#
# Table name: countries
#
#  id           :integer          not null, primary key
#  optionnumber :integer
#  language     :integer
#  con          :integer
#  country      :string(40)
#

class Country < ActiveRecord::Base
end
