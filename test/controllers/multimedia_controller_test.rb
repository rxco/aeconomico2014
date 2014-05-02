require 'test_helper'

class MultimediaControllerTest < ActionController::TestCase
  setup do
    @multimedium = multimedia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multimedia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multimedium" do
    assert_difference('Multimedium.count') do
      post :create, multimedium: { content_id: @multimedium.content_id, type: @multimedium.type, url: @multimedium.url }
    end

    assert_redirected_to multimedium_path(assigns(:multimedium))
  end

  test "should show multimedium" do
    get :show, id: @multimedium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multimedium
    assert_response :success
  end

  test "should update multimedium" do
    patch :update, id: @multimedium, multimedium: { content_id: @multimedium.content_id, type: @multimedium.type, url: @multimedium.url }
    assert_redirected_to multimedium_path(assigns(:multimedium))
  end

  test "should destroy multimedium" do
    assert_difference('Multimedium.count', -1) do
      delete :destroy, id: @multimedium
    end

    assert_redirected_to multimedia_path
  end
end
