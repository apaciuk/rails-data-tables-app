require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { customer_name: @order.customer_name, customer_state: @order.customer_state, item_sku: @order.item_sku, num_items_shipped: @order.num_items_shipped, payment_method: @order.payment_method, platform_order_num: @order.platform_order_num, price: @order.price, purchase_date: @order.purchase_date, sales_channel: @order.sales_channel, shipped_at: @order.shipped_at } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { customer_name: @order.customer_name, customer_state: @order.customer_state, item_sku: @order.item_sku, num_items_shipped: @order.num_items_shipped, payment_method: @order.payment_method, platform_order_num: @order.platform_order_num, price: @order.price, purchase_date: @order.purchase_date, sales_channel: @order.sales_channel, shipped_at: @order.shipped_at } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
