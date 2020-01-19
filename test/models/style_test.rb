require 'test_helper'

class StyleTest < ActiveSupport::TestCase
  def setup
    @style = styles(:cut)
  end

  test "style caption should be present" do
    @style.caption = nil
    assert_not @style.valid?
  end

  test "style price should be present" do
    @style.price = nil
    assert_not @style.valid?
  end

  test "style picture should be present" do
    puts @style.picture.url
    @style.picture = nil
    assert_not @style.valid?
  end

  test "order should be most recent first" do
    assert_equal styles(:dressing), Style.first
  end
end
