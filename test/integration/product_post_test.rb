require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

    # test "invalid product information" do
    #     get new_product_path
    #     assert_no_difference 'Product.count'do
    #       post products_path,params:{product:{name:           "",
    #                                     price:                "aaa",
    #                                     description:          "",
    #                                     picture:""
    #                               }}
    #     end
    #     assert_template 'products/new'
    #     assert_select "div#error_explanation"
    #     assert_select "div.field_with_errors"
    #     assert_select 'form[action="/products"]'
    #   end

end