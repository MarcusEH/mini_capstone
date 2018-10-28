class ChangeTaxToOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :tax, :decimal, precision: 9, scale: 2
  end
end
