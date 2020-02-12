require 'test_helper'

class StylesControllerTest < ActionDispatch::IntegrationTest

    def setup
        @user = users(:user)
        @style = styles(:cut)
    end

    test "should display create new style button with logged in" do
        log_in_as(@user)
        get styles_path
        assert_select "#new-btn",count: 1
    end

    test "shouldnot display create new style button without logged in" do
        get styles_path
        assert_select "#new-btn",count: 0
    end

    test "should create style with logged in" do
        log_in_as(@user)
        get styles_path
        assert_difference 'Style.count',1 do
          post styles_path, xhr:true, params: { style:{ caption: 'so good shampoo',
                                                    price: '2000',
                                                    picture: fixture_file_upload(Rails.root.join('test','fixtures','files','model_sample01.jpg')) }}
        end
    end

    test "should not create style without logged in" do
        get styles_path
        assert_no_difference 'Style.count',1 do
          post styles_path, xhr:true, params: { style:{ caption: 'cut',
                                                    price: '2000',
                                                    picture: fixture_file_upload(Rails.root.join('test','fixtures','files','model_sample01.jpg')) }}
        end
    end

    test "should edit style with logged in" do
        log_in_as(@user)
        get styles_path
        assert_select "div#edit-form", count: 1
        get edit_style_path(@style), xhr:true
        patch style_path(@style), xhr:true, params: { style:{ caption: 'cut & color',
                                                    price: '3000',
                                                    picture: fixture_file_upload(Rails.root.join('test','fixtures','files','model_sample02.jpg'))
                                                     }}
    end

    test "should not edit style without logged in" do
        get styles_path
        assert_select "#div#edit-form",count: 0
        get edit_style_path(@style), xhr:true
        patch style_path(@style), xhr:true, params: { style:{ caption: 'so good shampoo2',
                                                    price: '3000',
                                                    picture: fixture_file_upload(Rails.root.join('test','fixtures','files','model_sample03.jpg'))
                                                    }}
    end

    test "unsucccessfull edit" do
        log_in_as(@user)
        get styles_path
        assert_select "div#edit-form", count: 1
        get edit_style_path(@style), xhr:true
        patch style_path(@style), xhr:true, params: { style:{ caption: '',
                                                    price: 'two-hundrend thirty'}}
        assert_match '3つのエラー！ 入力に誤りがあります。', response.body
    end

    test "succcessfull edit" do
        log_in_as(@user)
        get styles_path
        assert_select "div#edit-form", count: 1
        get edit_style_path(@style), xhr:true
        caption = 'cut $ color'
        price = '3500'
        patch style_path(@style), xhr:true, params: { style:{ caption: caption,
                                                                      price: price,
                                                                      picture: fixture_file_upload(Rails.root.join('test','fixtures','files','model_sample03.jpg'))
                                                            }}
        assert flash.empty?
        @style.reload
        assert_equal caption, @style.caption
        assert_equal price, @style.price
        end


    test "should delete style with logged in" do
        get styles_path
        log_in_as(@user)
        assert_difference 'Style.count', -1 do
            delete style_path(@style)
        end
        assert_redirected_to styles_url
    end

    test "should not delete style without logged in" do
        get styles_path
        assert_no_difference 'Style.count', -1 do
            delete style_path(@style)
        end
        assert_redirected_to login_url
    end

end