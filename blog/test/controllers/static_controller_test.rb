require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get sorted_articles" do
    get :sorted_articles
    assert_response :success
  end

end
