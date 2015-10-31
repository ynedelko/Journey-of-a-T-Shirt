class ChangeDataTypeForCountries < ActiveRecord::Migration
  def self.up
     change_column :countries, :us_imports, :decimal
     change_column :countries, :poverty, :decimal
    end
    def self.down
      change_column :countries, :us_imports, :integer
      change_column :countries, :poverty, :integer
    end
end
