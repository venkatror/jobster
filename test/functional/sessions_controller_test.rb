require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    xyz = users(:one)
    post :create, :name => xyz.name, :password => 'secret'
    assert_response :success
    assert_equal xyz.id, session[:user_id]
  end

  test "should fail login" do
    xyz = users(:one)
    post :create, :name => xyz.name, :password => 'wrong'
    assert_redirected_to login_url
  end

  test "should logout" do
    delete :destroy
    assert_response :success
  end

    
end
