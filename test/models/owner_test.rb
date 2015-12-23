# == Schema Information
#
# Table name: owners
#
#  id               :integer          not null, primary key
#  type_of          :integer          default(1)
#  typeowner        :integer          default(2)
#  typeagent        :integer          default(0)
#  firstname        :string(30)
#  lastname         :string(30)
#  street           :string(100)
#  street2          :string(100)
#  zipandcity       :string(100)
#  country          :string(50)
#  telhome          :string(20)
#  telhome2         :string(20)
#  telwork          :string(20)
#  telwork2         :string(20)
#  mobile           :string(20)
#  mobile2          :string(20)
#  email            :string(50)
#  email2           :string(50)
#  bank             :string(100)
#  iban             :string(50)
#  bicswift         :string(50)
#  approved         :integer
#  remarks          :text(16777215)
#  birtday          :date
#  photo            :string(200)
#  password         :string(20)
#  preferedlanguage :integer
#  title            :integer
#  company          :string(110)
#  preferedpayment  :integer
#  bankname         :string(110)
#  bankcityzipp     :string(100)
#  percentageowner  :integer          default(10)
#  percentageagent  :integer          default(0)
#  level            :integer
#  crypted_password :string(255)
#  salt             :string(255)
#

require 'test_helper'

class OwnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
