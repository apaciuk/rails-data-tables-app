class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.float :price
      t.string :item_sku
      t.datetime :purchase_date
      t.string :platform_order_num
      t.string :sales_channel
      t.string :customer_name
      t.string :customer_state
      t.datetime :shipped_at
      t.integer :num_items_shipped
      t.string :payment_method

      t.timestamps
    end
  end
end
