require "test_helper"

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get participants_new_url
    assert_response :success
  end
end
