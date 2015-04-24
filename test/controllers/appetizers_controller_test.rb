require 'test_helper'

class AppetizersControllerTest < ActionController::TestCase
  setup do
    @appetizer = appetizers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appetizers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appetizer" do
    assert_difference('Appetizer.count') do
      post :create, appetizer: { description: @appetizer.description, name: @appetizer.name, price: @appetizer.price }
    end

    assert_redirected_to appetizer_path(assigns(:appetizer))
  end

  test "should show appetizer" do
    get :show, id: @appetizer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appetizer
    assert_response :success
  end

  test "should update appetizer" do
    patch :update, id: @appetizer, appetizer: { description: @appetizer.description, name: @appetizer.name, price: @appetizer.price }
    assert_redirected_to appetizer_path(assigns(:appetizer))
  end

  test "should destroy appetizer" do
    assert_difference('Appetizer.count', -1) do
      delete :destroy, id: @appetizer
    end

    assert_redirected_to appetizers_path
  end
end
