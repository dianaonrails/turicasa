# == Schema Information
#
# Table name: options_types
#
#  id           :integer          not null
#  optionnumber :integer
#  language     :integer
#  option       :string(40)
#

class OptionsType < ActiveRecord::Base
end
