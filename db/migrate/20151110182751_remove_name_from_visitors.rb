class RemoveNameFromVisitors < ActiveRecord::Migration
  def change
    remove_column :visitors, :name, :string
  end
end
