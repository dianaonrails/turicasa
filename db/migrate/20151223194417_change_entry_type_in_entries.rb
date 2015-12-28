class ChangeEntryTypeInEntries < ActiveRecord::Migration
  def change
  	rename_column :entries, :entry_type, :type_of
  end
end
