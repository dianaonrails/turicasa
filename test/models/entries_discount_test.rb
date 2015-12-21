# == Schema Information
#
# Table name: entries_discounts
#
#  id         :integer          not null, primary key
#  entrie     :integer
#  days       :integer
#  entry_type :integer
#  discount   :float(24)
#  unit       :integer
#  when       :integer
#  date1      :date
#  date2      :date
#

require 'test_helper'

class EntriesDiscountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
