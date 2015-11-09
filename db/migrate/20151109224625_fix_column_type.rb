class FixColumnType < ActiveRecord::Migration
  def change
    change_column :countries, :people_image, :string
  end
end
