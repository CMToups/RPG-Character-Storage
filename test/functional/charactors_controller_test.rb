require 'test_helper'

class CharactorsControllerTest < ActionController::TestCase
  setup do
    @charactor = charactors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charactors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charactor" do
    assert_difference('Charactor.count') do
      post :create, charactor: @charactor.attributes
    end

    assert_redirected_to charactor_path(assigns(:charactor))
  end

  test "should show charactor" do
    get :show, id: @charactor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charactor
    assert_response :success
  end

  test "should update charactor" do
    put :update, id: @charactor, charactor: @charactor.attributes
    assert_redirected_to charactor_path(assigns(:charactor))
  end

  test "should destroy charactor" do
    assert_difference('Charactor.count', -1) do
      delete :destroy, id: @charactor
    end

    assert_redirected_to charactors_path
  end
end
