require 'test_helper'

class ImageTagSeriesControllerTest < ActionController::TestCase
  setup do
    @image_tag_series = image_tag_series(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_tag_series)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_tag_series" do
    assert_difference('ImageTagSerie.count') do
      post :create, image_tag_series: { image_serie_id: @image_tag_series.image_serie_id, image_tag_id: @image_tag_series.image_tag_id }
    end

    assert_redirected_to image_tag_series_path(assigns(:image_tag_series))
  end

  test "should show image_tag_series" do
    get :show, id: @image_tag_series
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_tag_series
    assert_response :success
  end

  test "should update image_tag_series" do
    patch :update, id: @image_tag_series, image_tag_series: { image_serie_id: @image_tag_series.image_serie_id, image_tag_id: @image_tag_series.image_tag_id }
    assert_redirected_to image_tag_series_path(assigns(:image_tag_series))
  end

  test "should destroy image_tag_series" do
    assert_difference('ImageTagSerie.count', -1) do
      delete :destroy, id: @image_tag_series
    end

    assert_redirected_to image_tag_series_path
  end
end
