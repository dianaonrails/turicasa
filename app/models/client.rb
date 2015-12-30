# == Schema Information
#
# Table name: clients
#
#  id                  :integer          not null, primary key
#  email               :string(100)
#  password            :string(100)
#  title               :integer
#  firstname           :string(100)
#  lastname            :string(100)
#  gender              :integer
#  datebirth           :date
#  street              :string(100)
#  street2             :string(100)
#  country             :string(100)
#  cityzipp            :string(100)
#  telhome             :string(20)
#  telwork             :string(20)
#  mobille             :string(20)
#  photo               :string(200)
#  approved            :integer
#  remarks             :text(65535)
#  preferededlanguage  :integer
#  affiliate           :integer          default(0)
#  percentageaffiliate :integer          default(0)
#

class Client < ActiveRecord::Base
end
