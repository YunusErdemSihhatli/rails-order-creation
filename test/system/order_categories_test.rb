require "application_system_test_case"

class OrderCategoriesTest < ApplicationSystemTestCase
  setup do
    @order_category = order_categories(:one)
  end

  test "visiting the index" do
    visit order_categories_url
    assert_selector "h1", text: "Order Categories"
  end

  test "creating a Order category" do
    visit order_categories_url
    click_on "New Order Category"

    fill_in "Name", with: @order_category.name
    click_on "Create Order category"

    assert_text "Order category was successfully created"
    click_on "Back"
  end

  test "updating a Order category" do
    visit order_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @order_category.name
    click_on "Update Order category"

    assert_text "Order category was successfully updated"
    click_on "Back"
  end

  test "destroying a Order category" do
    visit order_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order category was successfully destroyed"
  end
end
