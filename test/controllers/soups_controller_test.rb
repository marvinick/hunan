require 'test_helper'

class SoupsControllerTest < ActionController::TestCase
  setup do
    @soup = soups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soup" do
    assert_difference('Soup.count') do
      post :create, soup: { name: @soup.name, price: @soup.price, size: @soup.size }
    end

    assert_redirected_to soup_path(assigns(:soup))
  end

  test "should show soup" do
    get :show, id: @soup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soup
    assert_response :success
  end

  test "should update soup" do
    patch :update, id: @soup, soup: { name: @soup.name, price: @soup.price, size: @soup.size }
    assert_redirected_to soup_path(assigns(:soup))
  end

  test "should destroy soup" do
    assert_difference('Soup.count', -1) do
      delete :destroy, id: @soup
    end

    assert_redirected_to soups_path
  end
end
