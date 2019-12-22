require 'test_helper'

class StylesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get styles_index_url
    assert_response :success
  end

end
