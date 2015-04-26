require 'test_helper'

class VeggiesControllerTest < ActionController::TestCase
  setup do
    @veggy = veggies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veggies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veggy" do
    assert_difference('Veggie.count') do
      post :create, veggy: { description: @veggy.description, name: @veggy.name, price: @veggy.price }
    end

    assert_redirected_to veggy_path(assigns(:veggy))
  end

  test "should show veggy" do
    get :show, id: @veggy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veggy
    assert_response :success
  end

  test "should update veggy" do
    patch :update, id: @veggy, veggy: { description: @veggy.description, name: @veggy.name, price: @veggy.price }
    assert_redirected_to veggy_path(assigns(:veggy))
  end

  test "should destroy veggy" do
    assert_difference('Veggie.count', -1) do
      delete :destroy, id: @veggy
    end

    assert_redirected_to veggies_path
  end
end
