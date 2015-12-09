class SetPrimaryKeyToEntries < ActiveRecord::Migration
  def change
  	change_column :entries,:id,:primary_key
  end
end
