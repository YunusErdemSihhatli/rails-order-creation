require 'test_helper'

class OrderCategoryTest < ActiveSupport::TestCase

  test "should not save with name" do
    order_category = OrderCategory.new
    order_category.name = 'Deneme'
    assert order_category.save
  end

  test "should not save without name" do
    order_category = OrderCategory.new
    assert_not order_category.save
  end

end
