class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :comment
      t.string :tshirt_made

      t.timestamps null: false
    end
  end
end
