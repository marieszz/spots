require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "get to static pages" do
    get storytime_path
    get new_contact_path
    get comingsoon_path
    get aboutus_path
    get startdating_path
    assert_response :success
  end

  test "cant send an email without a name" do
    contact = Contact.new
    assert_not contact.save
  end

  test "cant send an email without a good email" do
    contact = Contact.new(email: "myriam", name: "myriam", message: "message")
    assert_not contact.save
  end
end
