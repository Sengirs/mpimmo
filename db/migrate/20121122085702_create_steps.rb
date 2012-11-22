class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :buy_id
      t.integer :product_id
      t.boolean :status
      t.date :date
      t.string :origin
      t.datetime :contact1
      t.text :contact1_note
      t.datetime :contact2
      t.text :contact2_note
      t.datetime :contact3
      t.text :contact3_note
      t.datetime :contact4
      t.text :contact4_note
      t.text :note
      t.text :fail_note
      t.timestamps
    end
  end
end
