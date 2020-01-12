class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks, id: :integer do |t|
      t.string  :lot,     null: false
      t.integer :box,     null: false
      t.decimal :weight,  null: false, precision: 5, scale: 1
      t.integer :status,  null: false, default: 1
      t.integer :category_id
      t.timestamps
    end
    add_foreign_key :stocks, :categories
  end
end