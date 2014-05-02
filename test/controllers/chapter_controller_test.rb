require 'test_helper'

class ChapterControllerTest < ActionController::TestCase
  test "should get es_description:text" do
    get :es_description:text
    assert_response :success
  end

  test "should get en_description:text" do
    get :en_description:text
    assert_response :success
  end

  test "should get category_id:integer" do
    get :category_id:integer
    assert_response :success
  end

  test "should get version_id:integer" do
    get :version_id:integer
    assert_response :success
  end

end
