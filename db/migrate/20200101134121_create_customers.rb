class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers, id: :integer do |t|
      t.string :han_code, null: false
      t.string :han_name, null: false
      t.string :ten_code
      t.string :ten_name
      t.timestamps
    end
  end
end
