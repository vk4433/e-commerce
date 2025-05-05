require "test_helper"

class GalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gallery_index_url
    assert_response :success
  end

  test "should get search" do
    get gallery_search_url
    assert_response :success
  end

  test "should get checkbox" do
    get gallery_checkbox_url
    assert_response :success
  end
end
