# == Schema Information
#
# Table name: specialoffers
#
#  id          :integer          not null
#  entrie      :integer
#  language    :integer
#  name        :string(200)
#  from        :date
#  to          :date
#  description :text(4294967295)
#  price       :float(24)
#

require 'test_helper'

class SpecialofferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
