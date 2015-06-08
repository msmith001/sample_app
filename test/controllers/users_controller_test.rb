require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get sign up" do
    get :signup
    assert_response :success
    assert_select "title","User Sign up | Myles Smith Sample Site"
  end

end
