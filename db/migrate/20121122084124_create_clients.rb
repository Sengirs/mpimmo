class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :num_client
      t.string :surname1
      t.string :surname2
      t.string :name1
      t.string :name2
      t.text :adress
      t.integer :zip
      t.text :city
      t.string :ph1
      t.string :ph2
      t.string :port1
      t.string :port2
      t.string :mail1
      t.string :mail2
      t.datetime :date
      t.string :canal
      t.string :origin
      t.text :note
      t.string :encrypted_password
      t.string :salt
      t.timestamps
    end
  end
end
