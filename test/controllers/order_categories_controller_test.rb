require 'test_helper'

class OrderCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_category = order_categories(:one)
  end

  test "should get index" do
    get order_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_order_category_url
    assert_response :success
  end

  test "should create order_category" do
    assert_difference('OrderCategory.count') do
      post order_categories_url, params: { order_category: { name: @order_category.name } }
    end

    assert_redirected_to order_category_url(OrderCategory.last)
  end

  test "should show order_category" do
    get order_category_url(@order_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_category_url(@order_category)
    assert_response :success
  end

  test "should update order_category" do
    patch order_category_url(@order_category), params: { order_category: { name: @order_category.name } }
    assert_redirected_to order_category_url(@order_category)
  end

  test "should destroy order_category" do
    assert_difference('OrderCategory.count', -1) do
      delete order_category_url(@order_category)
    end

    assert_redirected_to order_categories_url
  end
end
