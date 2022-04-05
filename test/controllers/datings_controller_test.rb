require "test_helper"

class DatingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get datings_index_url
    assert_response :success
  end

  test "should get new" do
    get datings_new_url
    assert_response :success
  end

  test "should get create" do
    get datings_create_url
    assert_response :success
  end
end
