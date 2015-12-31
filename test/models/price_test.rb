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

require 'test_helper'

class PriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
