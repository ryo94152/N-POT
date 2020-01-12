class AddColumnStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :stock_year,  :integer, null: false
    add_column :stocks, :stock_month, :integer, null: false
    add_column :stocks, :stock_day,   :integer, null: false
  end
end
