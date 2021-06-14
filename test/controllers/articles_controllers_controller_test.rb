require "test_helper"

class ArticlesControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articles_controller = articles_controllers(:one)
  end

  test "should get index" do
    get articles_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_articles_controller_url
    assert_response :success
  end

  test "should create articles_controller" do
    assert_difference('ArticlesController.count') do
      post articles_controllers_url, params: { articles_controller: {  } }
    end

    assert_redirected_to articles_controller_url(ArticlesController.last)
  end

  test "should show articles_controller" do
    get articles_controller_url(@articles_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_articles_controller_url(@articles_controller)
    assert_response :success
  end

  test "should update articles_controller" do
    patch articles_controller_url(@articles_controller), params: { articles_controller: {  } }
    assert_redirected_to articles_controller_url(@articles_controller)
  end

  test "should destroy articles_controller" do
    assert_difference('ArticlesController.count', -1) do
      delete articles_controller_url(@articles_controller)
    end

    assert_redirected_to articles_controllers_url
  end
end
