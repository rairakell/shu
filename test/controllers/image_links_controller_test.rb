require 'test_helper'

class ImageLinksControllerTest < ActionController::TestCase
  setup do
    @image_link = image_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_link" do
    assert_difference('ImageLink.count') do
      post :create, image_link: { fiction_id: @image_link.fiction_id, image_id: @image_link.image_id }
    end

    assert_redirected_to image_link_path(assigns(:image_link))
  end

  test "should show image_link" do
    get :show, id: @image_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_link
    assert_response :success
  end

  test "should update image_link" do
    patch :update, id: @image_link, image_link: { fiction_id: @image_link.fiction_id, image_id: @image_link.image_id }
    assert_redirected_to image_link_path(assigns(:image_link))
  end

  test "should destroy image_link" do
    assert_difference('ImageLink.count', -1) do
      delete :destroy, id: @image_link
    end

    assert_redirected_to image_links_path
  end
end
