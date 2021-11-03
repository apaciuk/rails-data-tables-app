json.extract! order, :id, :price, :item_sku, :purchase_date, :platform_order_num, :sales_channel, :customer_name, :customer_state, :shipped_at, :num_items_shipped, :payment_method, :created_at, :updated_at
json.url order_url(order, format: :json)
