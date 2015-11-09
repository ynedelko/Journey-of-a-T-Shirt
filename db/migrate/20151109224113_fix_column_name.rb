class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :countries, :image, :country_image
    rename_column :countries, :education, :people_image
  end
end
