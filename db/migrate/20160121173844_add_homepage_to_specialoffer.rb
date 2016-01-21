class AddHomepageToSpecialoffer < ActiveRecord::Migration
  def change
    add_column :specialoffers, :homepage, :boolean
  end
end
