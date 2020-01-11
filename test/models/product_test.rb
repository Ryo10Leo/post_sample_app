require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  def setup
    @product = products(:shampoo)
  end

  # test "should be valid" do
  #   assert @product.valid?
  # end

  test "product name should be present" do
    @product.name = nil
    assert_not @product.valid?
  end

  test "product price should be present" do
    @product.price = nil
    assert_not @product.valid?
  end

  test "product description should be present" do
    @product.description = nil
    assert_not @product.valid?
  end

  test "product picture should be present" do
    puts @product.picture.url
    @product.picture = nil
    assert_not @product.valid?
  end

  test "content should be at most 140 characters" do
    @product.description = "a" * 201
    assert_not @product.valid?
  end

  test "order should be most recent first" do
    assert_equal products(:Treatment), Product.first
  end
end
