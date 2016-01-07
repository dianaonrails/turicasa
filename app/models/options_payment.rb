# == Schema Information
#
# Table name: options_payments
#
#  id           :integer          not null
#  optionnumber :integer
#  language     :integer
#  option       :string(40)
#

class OptionsPayment < ActiveRecord::Base
end
