class AddGuessToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :guess, :string
  end
end
