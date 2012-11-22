class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.integer :client_id
      t.integer :product_id
      t.date :date
      t.string :origin
      t.string :mandat
      t.timestamps
    end
  end
end
