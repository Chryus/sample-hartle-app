require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
   # called before every single test
  def setup
    @subtitle = "Ruby on Rails Tutorial Sample Hartle App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@subtitle}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{subtitle}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{subtitle}"
  end

end
