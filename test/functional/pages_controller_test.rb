require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get search--no-test-framework" do
    get :search--no-test-framework
    assert_response :success
  end

end
