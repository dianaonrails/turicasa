# == Schema Information
#
# Table name: options_prices
#
#  id           :integer          not null
#  optionnumber :integer
#  language     :integer
#  option       :string(40)
#

class OptionsPrice < ActiveRecord::Base
end
