class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :us_imports
      t.integer :min_wage
      t.integer :poverty
      t.integer :education
      t.string :image

      t.timestamps null: false
    end
  end
end
