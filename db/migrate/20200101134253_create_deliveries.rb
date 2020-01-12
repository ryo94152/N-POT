class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries, id: :integer do |t|
      t.string :han_year,  null: false
      t.string :han_month, null: false
      t.string :han_day,   null: false
      t.integer :price,    null: false
      t.integer :stock_id
      t.integer :customer_id
      t.timestamps
    end
    add_foreign_key :deliveries, :stocks
    add_foreign_key :deliveries, :customers
  end
end