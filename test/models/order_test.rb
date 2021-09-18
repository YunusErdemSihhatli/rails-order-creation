require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  setup do
    @order = orders(:one)
  end

  test "should apply discount" do
    amount = @order.amount
    discount = '1.99'
    @order.apply_discount(discount)
    assert_equal @order.amount, (amount - discount.to_f)
  end

  test "should not save with full discount" do
    @order.amount = @order.amount - @order.amount
    assert_not @order.save
  end

  test "should not save without customer full name" do
    @order.customer_name = 'Yunus  '
    assert_not @order.save
  end
  
end
