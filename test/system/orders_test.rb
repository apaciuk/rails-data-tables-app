require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Customer name", with: @order.customer_name
    fill_in "Customer state", with: @order.customer_state
    fill_in "Item sku", with: @order.item_sku
    fill_in "Num items shipped", with: @order.num_items_shipped
    fill_in "Payment method", with: @order.payment_method
    fill_in "Platform order num", with: @order.platform_order_num
    fill_in "Price", with: @order.price
    fill_in "Purchase date", with: @order.purchase_date
    fill_in "Sales channel", with: @order.sales_channel
    fill_in "Shipped at", with: @order.shipped_at
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Customer name", with: @order.customer_name
    fill_in "Customer state", with: @order.customer_state
    fill_in "Item sku", with: @order.item_sku
    fill_in "Num items shipped", with: @order.num_items_shipped
    fill_in "Payment method", with: @order.payment_method
    fill_in "Platform order num", with: @order.platform_order_num
    fill_in "Price", with: @order.price
    fill_in "Purchase date", with: @order.purchase_date
    fill_in "Sales channel", with: @order.sales_channel
    fill_in "Shipped at", with: @order.shipped_at
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
