class AddFieldsToOwner < ActiveRecord::Migration
  def change
  	add_column :owners, :crypted_password, :string
  	add_column :owners, :salt, :string
  end
end
