require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

    def setup
        @user = users(:user)
        @product = products(:Treatment)
    end

    test "should display create new product button with logged in" do
        log_in_as(@user)
        get products_path
        assert_select "#new-btn",count: 1
    end

    test "shouldnot display create new product button without logged in" do
        get products_path
        assert_select "#new-btn",count: 0
    end

    test "should create product with logged in" do
        log_in_as(@user)
        get products_path
        assert_difference 'Product.count',1 do
          post products_path, xhr:true, params: { product:{ name: 'so good shampoo',
                                                    price: '2000',
                                                    description: 'so good shampoo',
                                                    picture: fixture_file_upload(Rails.root.join('test','fixtures','files', 'product1.jpg')) }}
        end
    end

    test "should not create product without logged in" do
        get products_path
        assert_no_difference 'Product.count',1 do
          post products_path, xhr:true, params: { product:{ name: 'so good shampoo',
                                                    price: '2000',
                                                    description: 'so good shampoo',
                                                    picture: fixture_file_upload(Rails.root.join('test','fixtures','files', 'product1.jpg')) }}
        end
    end

    test "should edit product with logged in" do
        log_in_as(@user)
        get products_path
        assert_select "div#edit-form", count: 1
        get edit_product_path(@product), xhr:true
        patch product_path(@product), xhr:true, params: { product:{ name: 'so good shampoo2',
                                                    price: '3000',
                                                    description: 'so good shampoo!!!',
                                                    picture: fixture_file_upload(Rails.root.join('test','fixtures','files', 'product2.jpg'))
                                                     }}
    end

    test "should not edit product without logged in" do
        get products_path
        assert_select "#div#edit-form",count: 0
        get edit_product_path(@product), xhr:true
        patch product_path(@product), xhr:true, params: { product:{ name: 'so good shampoo2',
                                                    price: '3000',
                                                    description: 'so good shampoo!!!',
                                                    picture: fixture_file_upload(Rails.root.join('test','fixtures','files', 'product3.jpg'))
                                                    }}
    end

    test "unsucccessfull edit" do
        log_in_as(@user)
        get products_path
        assert_select "div#edit-form", count: 1
        get edit_product_path(@product), xhr:true
        patch product_path(@product), xhr:true, params: { product:{ name: '',
                                                    price: 'two-hundrend thirty',
                                                    description: ''}}
        assert_match '4つのエラー！ 入力に誤りがあります。', response.body
    end

    test "succcessfull edit" do
        log_in_as(@user)
        get products_path
        assert_select "div#edit-form", count: 1
        get edit_product_path(@product), xhr:true
        name = 'so good shampoo2'
        price = '3000'
        description = 'so good shampoo!!!'
        patch product_path(@product), xhr:true, params: { product:{ name: name,
                                                                      price: price,
                                                                      description: description,
                                                                      picture: fixture_file_upload(Rails.root.join('test','fixtures','files', 'product3.jpg'))
                                                                    }}
        assert flash.empty?
        @product.reload
        assert_equal name, @product.name
        assert_equal price, @product.price
        assert_equal description,@product.description
        end


    test "should delete product with logged in" do
        get products_path
        log_in_as(@user)
        assert_difference 'Product.count', -1 do
            delete product_path(@product)
        end
        assert_redirected_to products_url
    end

    test "should not delete product without logged in" do
        get products_path
        assert_no_difference 'Product.count', -1 do
            delete product_path(@product)
        end
        assert_redirected_to login_url
    end

end