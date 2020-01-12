class ChangeDatatypeStockYearOfStocks < ActiveRecord::Migration[5.2]
  def change
    def change
      change_column :stocks, :stock_year, :datetime
      change_column :stocks, :stock_month, :datetime
      change_column :stocks, :stock_day, :datetime
    end
  end
end
