require 'test_helper'

class SubchaptersControllerTest < ActionController::TestCase
  setup do
    @subchapter = subchapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subchapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subchapter" do
    assert_difference('Subchapter.count') do
      post :create, subchapter: { chapter_id: @subchapter.chapter_id, en_description: @subchapter.en_description, es_description: @subchapter.es_description }
    end

    assert_redirected_to subchapter_path(assigns(:subchapter))
  end

  test "should show subchapter" do
    get :show, id: @subchapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subchapter
    assert_response :success
  end

  test "should update subchapter" do
    patch :update, id: @subchapter, subchapter: { chapter_id: @subchapter.chapter_id, en_description: @subchapter.en_description, es_description: @subchapter.es_description }
    assert_redirected_to subchapter_path(assigns(:subchapter))
  end

  test "should destroy subchapter" do
    assert_difference('Subchapter.count', -1) do
      delete :destroy, id: @subchapter
    end

    assert_redirected_to subchapters_path
  end
end
