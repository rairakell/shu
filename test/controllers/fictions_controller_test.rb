require 'test_helper'

class FictionsControllerTest < ActionController::TestCase
  setup do
    @fiction = fictions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fictions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fiction" do
    assert_difference('Fiction.count') do
      post :create, fiction: { name: @fiction.name }
    end

    assert_redirected_to fiction_path(assigns(:fiction))
  end

  test "should show fiction" do
    get :show, id: @fiction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fiction
    assert_response :success
  end

  test "should update fiction" do
    patch :update, id: @fiction, fiction: { name: @fiction.name }
    assert_redirected_to fiction_path(assigns(:fiction))
  end

  test "should destroy fiction" do
    assert_difference('Fiction.count', -1) do
      delete :destroy, id: @fiction
    end

    assert_redirected_to fictions_path
  end
end
