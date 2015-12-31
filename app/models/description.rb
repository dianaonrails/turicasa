# == Schema Information
#
# Table name: descriptions
#
#  id           :integer          not null, primary key
#  entrie       :integer
#  language     :integer
#  despcription :text(4294967295)
#

class Description < ActiveRecord::Base
end
