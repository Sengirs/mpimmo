class CreateBuys < ActiveRecord::Migration
  def change
    create_table :buys do |t|
      t.integer :client_id
      t.string :cat
      t.text :budget
      t.integer :bdr
      t.integer :tipe
      t.text :surface
      t.text :sector1
      t.text :sector2
      t.text :sector3
      t.text :sector4
      t.text :ground
      t.string :age
      t.boolean :travaux
      t.boolean :plain
      t.boolean :garage
      t.string :standing
      t.text :note
      t.timestamps
    end
  end
end
