class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :class
      t.integer :num_mandat
      t.boolean :status
      t.date :date1
      t.date :date2
      t.text :adress
      t.integer :zip
      t.text :city
      t.string :cat
      t.decimal :price1
      t.decimal :price2
      t.decimal :price3
      t.decimal :price4
      t.string :etat
      t.integer :year
      t.integer :tipe
      t.integer :bdr
      t.decimal :surface
      t.decimal :ground
      t.integer :story
      t.text :sector1
      t.text :sector2
      t.text :sector3
      t.text :sector4
      t.boolean :pool
      t.boolean :travaux
      t.text :travaux_note
      t.text :note
      t.boolean :vitrine
      t.timestamps
    end
  end
end
