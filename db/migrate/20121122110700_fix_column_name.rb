class FixColumnName < ActiveRecord::Migration
  def change
  rename_column :products, :class, :attr   
  end
end
