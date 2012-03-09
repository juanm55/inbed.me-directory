require 'test_helper'

class TeammingsControllerTest < ActionController::TestCase
  setup do
    @teamming = teammings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teammings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teamming" do
    assert_difference('Teamming.count') do
      post :create, teamming: @teamming.attributes
    end

    assert_redirected_to teamming_path(assigns(:teamming))
  end

  test "should show teamming" do
    get :show, id: @teamming
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teamming
    assert_response :success
  end

  test "should update teamming" do
    put :update, id: @teamming, teamming: @teamming.attributes
    assert_redirected_to teamming_path(assigns(:teamming))
  end

  test "should destroy teamming" do
    assert_difference('Teamming.count', -1) do
      delete :destroy, id: @teamming
    end

    assert_redirected_to teammings_path
  end
end
