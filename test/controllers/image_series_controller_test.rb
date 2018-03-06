require 'test_helper'

class ImageSeriesControllerTest < ActionController::TestCase
  setup do
    @image_series = image_series(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_series)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_series" do
    assert_difference('ImageSerie.count') do
      post :create, image_series: { name: @image_series.name }
    end

    assert_redirected_to image_series_path(assigns(:image_series))
  end

  test "should show image_series" do
    get :show, id: @image_series
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_series
    assert_response :success
  end

  test "should update image_series" do
    patch :update, id: @image_series, image_series: { name: @image_series.name }
    assert_redirected_to image_series_path(assigns(:image_series))
  end

  test "should destroy image_series" do
    assert_difference('ImageSerie.count', -1) do
      delete :destroy, id: @image_series
    end

    assert_redirected_to image_series_path
  end
end
